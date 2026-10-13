#!/bin/zsh
# Port of the AutoCorrect PopClip extension: pipe the selection through
# `autocorrect --stdin` and return the formatted text for pasting.
#
# Like the reference `echo -n "$(autocorrect --stdin)"`, the trailing
# newline autocorrect appends is stripped (via command substitution),
# so pasting never adds an extra line break to the selection.

autocorrect=""
for candidate in /opt/homebrew/bin/autocorrect /usr/local/bin/autocorrect "$(command -v autocorrect 2>/dev/null)"; do
  if [ -n "$candidate" ] && [ -x "$candidate" ]; then
    autocorrect="$candidate"
    break
  fi
done

if [ -z "$autocorrect" ]; then
  printf '%s' '{"type":"toast","message":"autocorrect is not installed. Run: brew install autocorrect","style":"error"}'
  exit 0
fi

result="$(printf '%s' "$OPENCLIP_TEXT" | "$autocorrect" --stdin)"
printf '%s' "$result"
