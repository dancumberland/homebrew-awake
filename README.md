# homebrew-awake

Homebrew tap for [awake](https://github.com/dancumberland/awake): timed, password-free awake sessions with optional idle-lock prevention and lid-close sleep suppression.

```sh
brew tap dancumberland/awake
brew trust dancumberland/awake
brew install awake
```

To update an existing installation:

```sh
brew update
brew upgrade awake
awake --version
```

Version 4.0.0 makes `awake 1` and `awake 1 unlock` password-free. Add `lid` for laptop-only lid-sleep suppression, e.g. `awake 1 unlock lid`; that option requires admin access. If upgrading from v3, add `lid` to retain the old default behavior.

See the [usage and recovery documentation](https://github.com/dancumberland/awake#usage) before relying on closed-lid GUI work.
