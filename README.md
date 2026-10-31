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

Version 4.1.0 bundles the optional one-time setup for password-free lid mode:

```sh
awake setup          # Enter your Mac password once, if not already configured
awake helper-status  # Check the installed helper
awake 1 unlock lid   # Future runs do not ask for a password
```

Setup grants only bounded fixed-helper start, stop, and status operations for your account, with a root recovery job. It is optional and is not run by `brew install` or `brew upgrade`. Existing configured helpers are retained. Remove the helper first with `awake uninstall-helper` before uninstalling the package.

Normal `awake 1` and `awake 1 unlock` remain password-free without setup. If upgrading from v3, add `lid` to retain its old default sleep-suppression behavior.

See the [usage and recovery documentation](https://github.com/dancumberland/awake#usage) before relying on closed-lid GUI work.
