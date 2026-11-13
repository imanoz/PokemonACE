# ACE Scripts for English Pokémon Red, Blue and Yellow

This repository contains my personal ACE script collection for Pokémon Generation 1 games, designed to either run temporarilly using TimoVM’s 4F Nickname Writer, or to be permanently installed with it inside TimOS script selector.

----
### Categories

- **Effects:** Scripts that perform a specific action in the game.
- **Events:** Custom events that occur in specific map areas.
- **Mechanics:** Scripts that run continuously in the backround and add a new game behavior.
- **Minigames:** No explanation needed here. Show me your highscores! :)
- **Tools:** Scripts and utilities that help developers build, test or debug custom scripts and game features!

### Prefixes
- **[P] Premium:** High-quality scripts designed to simplify the game and make it more consistent — a must-have!
- **[B] Basic:** Medium scaled scripts that add extra functionality to the game.
- **[M] Minimal:** Simple scripts that use only a few nicknames, ideal for quick tasks or learning purposes.

Note: Scripts marked with the symbol ``+`` are fully debugged and considered stable.

### Components

- **Hex machine code** installable over Nickname Writer, compatible with **Original Cartridges**, Virtual Console and Emulator ROMs.
- **Assembly source code** written for QuickRGBDS, intended for learning and customization.


### Requirements
- A Gameboy console or an accurate emulator (BGB recommended).
- A Gen 1 English Pokémon authentic cartridge or an original ROM.
- [TimoVM's ACE](https://glitchcity.wiki/wiki/Guides:TimoVM%27s_gen_1_ACE_setups) setup.
- [TimOS](https://glitchcity.wiki/wiki/Guides:Nickname_Writer_Codes) latest version (for permanent script installation).
- [QuickRGBDS](https://github.com/imanoz/QuickRGBDS) (in case you want to adjust the scripts and recompile them).


### How to run the scripts

1. **Insert code:**
Use [Nickname Converter](https://timovm.github.io/NicknameConverter/) to translate the hex into nickname codes, then [Nickname Writer](https://glitchcity.wiki/wiki/Guides:Nickname_Writer_Codes) to load them in the game. Alternatively, if using a compatible emulator, just open Nickname Writer and paste the hex data directly into the appropriate memory address:
   - $D8B5 for Pokémon Red & Blue
   - $D8B4 for Pokémon Yellow

2. **Run code:**
After you insert the last nickname code (or just press start in case of direct hex paste) press Start again in the nickname verification screen to run it. If everything was correct the script will run without any issues. In case of an installer, the installation will be done and you will get back to items menu, otherwise the script will run directly.

3. **Verify (installers only):**
Open the script selector. If everything was successful, the total number of available scripts should have increased by one, and the newly installed one should run upon activation.


###  ⚠ Warning
Since the script selector has less than 1 kb of available memory, not all installable scripts can fit inside at the same time. This means that installing a new script usually overwrites the previous one, unless you manually change the installation address in the .asm file and recompile it. To solve this and get access to every script at any moment in the game, [BBMenu](https://github.com/imanoz/bbmenu) will be soon available again.
