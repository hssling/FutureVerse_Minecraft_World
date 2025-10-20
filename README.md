# FutureVerse - City of Light

FutureVerse is a neon-drenched megacity adventure crafted for the Minecraft Marketplace. Touch down in a holographic plaza, ignite cinematic questlines, and defend the skyline against adaptive AI threats while assembling a quantum rocket.

## Pillars

- **Cinematic Onboarding**: Auto-built spawn plaza, synchronized lighting, ambient score, and animated NPC introductions.
- **Quest-Driven Gameplay**: Scoreboard-backed quest stages, daily challenges, multi-stage boss encounters, and branching rewards.
- **Custom Technology**: Craftable anti-gravity gear, photon weaponry, holographic HUDs, and teleportation utilities.
- **Living City**: Patrol drones, sentient wolves, and sentry AIs with unique drops and combat behaviors.
- **Marketplace Ready**: Structured packs, localized strings (en_US, es_MX), custom audio/visual assets, and automated packaging scripts.

## Repository Layout

| Path | Purpose |
| --- | --- |
| `behavior_packs/FutureVerse_Pack` | AI, entities, loot tables, functions, quest logic. |
| `resource_packs/FutureVerse_Pack` | Textures, audio, client entities, UI strings. |
| `worlds/FutureVerse_Minecoin_World` | Template world shell and auto-build scripts. |
| `scripts` | Utility functions triggered during world startup. |
| `.github/workflows` | CI to validate JSON and build distributable archives. |

## Quick Start

1. Run `powershell -ExecutionPolicy Bypass -File tools/package.ps1` to generate Marketplace-ready archives in `dist/`.
2. Import `dist/FutureVerse.mcworld` into Minecraft Bedrock.
3. Import `dist/FutureVerse.behavior.zip` and `dist/FutureVerse.resource.zip` for standalone testing if needed.
4. Launch the world. The onboarding cinematic runs automatically (`/function system/setup` to replay).

## Marketplace Submission Notes

- **Visual Assets**: Provide a 512x512 key art thumbnail and 3-5 1920x1080 screenshots highlighting Sky District, Quantum Garden, and Zero-G Arena sequences.
- **Description Hooks**: Emphasize AI-controlled patrols, co-op quest scaling, and rocket assembly endgame.
- **Target Audience**: 7+ (mild sci-fi combat). Supports solo or 4-player co-op out of the box.
- **Technical Compliance**: All JSON validated, pack manifests versioned, and world metadata aligned with Marketplace guidelines.

## Localization

- `texts/en_US.lang` - English (US)
- `texts/es_MX.lang` - Spanish (Latin America)

Add further languages by mirroring the existing keys.

## Credits

Created by **Dr Siddalingaiah H S** in collaboration with the **AI Build System**.

Licensed under MIT - see [LICENSE.txt](LICENSE.txt).
