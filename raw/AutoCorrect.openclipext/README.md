# AutoCorrect

Format CJK text in your selection with [autocorrect](https://github.com/huacnlee/autocorrect) —
automatic spacing between CJK and half-width characters, punctuation rules, and more. Select text
anywhere, run **Formatting CJK**, and the formatted result replaces your selection.

## Requirements

- OpenClip 1.1.0 or later.
- [autocorrect](https://github.com/huacnlee/autocorrect) — install with `brew install autocorrect`.
  The extension looks for it in `/opt/homebrew/bin`, `/usr/local/bin`, and on `PATH`.

If the binary is missing, the action shows a toast telling you how to install it instead of failing
silently.

## Usage

1. Select text containing CJK characters anywhere on your Mac.
2. Open the OpenClip popup and choose **Formatting CJK**.
3. The formatted text is pasted over your selection (copied instead when the target app cannot
   accept pasting).

## Privacy

The selection is piped to the local `autocorrect` process on stdin and never leaves your machine.

## Credits

A port of the [AutoCorrect PopClip extension](https://github.com/bitxeno/PopClip-Extensions/tree/master/src/AutoCorrect),
which pipes stdin through `autocorrect --stdin` and pastes the result, adapted to OpenClip's
shell-action protocol. The icon is a hand-drawn original, visually consistent with PopClip's
`square CJK` icon (a bold "CJK" in a rounded square); it is path-based with no font dependency
and monochrome so it inherits the OpenClip theme colour.
