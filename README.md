# Homebrew Tap

Install Chameo on an Apple Silicon Mac running macOS 26 or newer.

The cask clears quarantine from the installed `Chameo.app`, skipping the usual
first-launch Gatekeeper check. Chameo is ad-hoc signed.

```sh
brew install --cask robertu7/tap/chameo
```

If an earlier Homebrew install still shows the Gatekeeper warning, run
`brew reinstall --cask robertu7/tap/chameo` to apply the current cask.
Approve Camera and Photos access when prompted.

Chameo supports in-app updates through Sparkle. To upgrade with Homebrew, run
`brew upgrade --cask robertu7/tap/chameo`.

Quit Chameo before removing it with `brew uninstall --cask robertu7/tap/chameo`.
Use `--zap` to also remove Chameo's preferences, caches, and local-photo index.
Saved photos live in Photos.app and `~/Pictures/Chameo`.

## Maintenance

The [Chameo release workflow](https://github.com/robertu7/Chameo/blob/main/.github/workflows/release.yml)
updates the cask after publishing the latest stable release and Sparkle appcast.
It uses a deploy key scoped to this repository and pins the published DMG's
SHA-256 checksum. Cask generation and its regression tests live in the
[Chameo repository](https://github.com/robertu7/Chameo/blob/main/script/update_homebrew_cask.py).

CI audits the cask and installs it into a temporary Applications folder on a
macOS runner.
