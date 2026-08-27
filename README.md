# homebrew-nosy

Homebrew tap for [Nosy](https://github.com/2026osscontest/nosy) — a desktop pet that diagnoses your development environment.

## Install

```sh
brew tap 2026osscontest/nosy
brew trust 2026osscontest/nosy
brew install --cask nosy
```

Homebrew refuses to load casks from third-party taps until you trust them, so
the `brew trust` line is required — without it the install stops with
`Refusing to load cask ... from untrusted tap`.

Nosy is signed ad-hoc but not notarized by Apple, so macOS quarantines it on
first launch. Clear the quarantine flag once:

```sh
xattr -dr com.apple.quarantine /Applications/Nosy.app
```

## Uninstall

```sh
brew uninstall --cask nosy
```

To remove diagnostic snapshots and preferences as well:

```sh
brew uninstall --zap --cask nosy
```

## Issues

Report problems in the [main repository](https://github.com/2026osscontest/nosy/issues).
