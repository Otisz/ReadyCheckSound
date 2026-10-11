# ReadyCheckSound

A tiny World of Warcraft (Retail) addon that makes sure you never miss a ready check when you play with sound effects turned off.

Blizzard plays the ready check sound on the **Sound Effects** channel, so if you disable sound effects (or set their volume to 0) the ready check is silent. ReadyCheckSound plays the same ready check sound on the **Master** channel instead, but only when the sound effects channel is disabled, so you never hear it twice.

## Features

- Plays the standard ready check sound on the Master channel when:
  - "Enable Sound Effects" is turned off, **or**
  - the Sound Effects volume is set to 0
- Stays quiet when you start the ready check yourself
- Does nothing when sound effects are enabled (Blizzard's own sound plays as usual)
- Has no configuration, saved variables, or chat messages. It just works.

## Installation

### CurseForge

Install **ReadyCheckSound** through the CurseForge app, or download it from the CurseForge project page.

### Manual

1. Download the latest release.
2. Extract it so that the folder structure is:
   ```
   World of Warcraft/_retail_/Interface/AddOns/ReadyCheckSound/ReadyCheckSound.toc
   ```
3. Restart the game or type `/reload`.

## Notes

- If your **master** sound is disabled, or the game is in the background with "Sound in Background" turned off, no sound can play. The addon respects those settings.
- To turn the addon off, disable it from the in-game AddOns list.

## Compatibility

World of Warcraft Retail (Interface 120100 / 120105).

## Releasing

Releases are built by the [BigWigs packager](https://github.com/BigWigsMods/packager) via GitHub Actions. Pushing a tag like `v1.0.1` packages the addon (the tag becomes the version in the `.toc`), creates a GitHub release, and uploads it to CurseForge.

Requirements:
- `## X-Curse-Project-ID` set in `ReadyCheckSound.toc`
- A `CF_API_KEY` repository secret containing a CurseForge API token

## Author

Otisz

## License

[MIT](LICENSE)
