# note89/homebrew-tap

Homebrew casks for [note89](https://github.com/note89)'s apps.

```sh
brew install --cask note89/tap/screensnap
brew install --cask note89/tap/hearsay
```

| Cask | App |
|---|---|
| `screensnap` | [Screensnap](https://github.com/note89/screensnap) — menu bar screen recorder for GIF and MP4 |
| `hearsay` | [Hearsay](https://github.com/note89/hearsay) — push-to-talk dictation for Apple Silicon, macOS 26+ |

Screensnap is self-contained — it bundles its GIF encoder, so the cask has no
dependencies. Screensnap updates itself from its GitHub releases, so the cask is marked
`auto_updates`; `brew upgrade` leaves it alone. `Scripts/release.sh --publish`
in the Screensnap repo bumps the cask here on every release.

Hearsay uses on-device speech recognition by default and supports optional cloud
providers. Its releases are Developer ID signed, notarized, and stapled. Update it
with `brew upgrade --cask note89/tap/hearsay`.
