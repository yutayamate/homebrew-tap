# homebrew-tap

A Homebrew tap for command-line tools maintained by Yuta Yamate. The tap can host formulae for multiple tools; each formula defines its own source, build requirements, and release update process.

## Add the tap

```sh
brew tap yutayamate/tap
```

## Available formulae

### kcx

`kcx` reads secrets from the macOS Keychain and starts a command with those values in its environment.

```sh
brew install yutayamate/tap/kcx
```

The formula builds from a pinned `kcx` source revision and requires the Swift Command Line Tools. After Homebrew refreshes the tap, upgrade with:

```sh
brew update
brew upgrade yutayamate/tap/kcx
```

## Formula maintenance

GitHub Actions checks the latest stable `kcx` release hourly and updates the `kcx` formula when a new version is published. Additional formulae can be added under `Formula/`; their build and update requirements should be documented with the formula or in this README.
