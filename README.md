# tzutalin's Homebrew tap

macOS apps and command-line tools by [tzutalin](https://github.com/tzutalin).

```sh
brew tap tzutalin/tap
```

| Package | Install | What it is |
|---|---|---|
| [DiffPilot](https://tzutalin.github.io/DiffPilot/) | `brew trust --cask tzutalin/tap/diffpilot`<br>`brew install --cask tzutalin/tap/diffpilot` | Native app for reviewing Git changes and pull requests with coding agents. Also installs the `dip` command |

Update with `brew upgrade` (or `brew upgrade --cask diffpilot`). Remove with `brew uninstall --cask diffpilot`; add `--zap` to also delete its settings.

## Layout

- `Casks/<name>.rb`: macOS apps, installed from a signed and notarized DMG on the project's GitHub releases
- `Formula/<name>.rb`: command-line tools

Casks are written by each project's release script (DiffPilot: `apple-release/update-cask.sh`), so edit them by hand only to fix a broken release.

## Check a package locally

```sh
brew audit --cask --online tzutalin/tap/diffpilot
brew install --cask --verbose tzutalin/tap/diffpilot
```
