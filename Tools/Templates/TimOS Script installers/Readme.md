## TimOS Script installers

Designed for [TimOS Script Selector](https://glitchcity.wiki/wiki/Guides:Nickname_Writer_Codes#Installing_a_RAM_writer_environment_(TimOS)) on English versions of Pokémon Red, Blue, and Yellow.

When using Nickname Writer, imported scripts typically are lost after restarting the game or entering a trainer battle. In contrast, the script selector allows scripts to persist in memory by storing them in SRAM automatically.

Script installers are designed to fully utilize this feature by automatically installing your scripts and make them permanently accessible via the script selector.


### Getting Started

First, make sure your script runs correctly using Nickname Writer. Once the scripts are installed, they are moved and saved in unused memory, so it's important that everything works properly beforehand to avoid issues.

There are two ways to use an installer, depending on your script’s complexity and its logic:

* **HEX Auto installer (Easy):**
Use this method to install simple or moderately complex scripts in raw HEX format, as long as they contain only relative jumps. It’s beginner-friendly and doesn't require a compiler.

* **ASM Manual installer (Advanced):**
Choose this method for scripts that need to be placed in specific memory addresses. QuickRGBDS is required to compile your .asm code into installable scripts.

-----

### HEX Auto installer Instructions

1. **Add script length:**
Add the hexadecimal number of bytes your script consists of, right after installer's hex data.
You can use a decimal-to-hex calculator to get the correct value.

2. **Append your script:**
Paste your script's hex code immediately after the installer code.

3. **Import via Nickname Writer:**
Use Nickname Writer to insert the full hex code (installer + script) into your save file.

4. **Verify in TimOS:**
Once in-game, open the TimOS script selector and run the last script in the list.
If everything worked correctly, the total number of available scripts should have increased by 1.


**Red/Blue**
```
11 49 cb 1b 1a 3c 28 fb 7a fe  
c8 30 02 1e ff 13 21 e9 c6 7e  
34 87 21 c7 c7 85 6f 73 23 72  
21 db d8 4e 23 c3 3a 12
```

**Yellow**
```
11 49 cb 1b 1a 3c 28 fb 7a fe  
c8 30 02 1e ff 13 21 e9 c6 7e  
34 87 21 c0 c7 85 6f 73 23 72  
21 da d8 4e 23 c3 ac 0e
```
-----

### ASM Manual installer Instructions

This method requires your script to be written in RGBDS assembly format (.asm).

1. **Prepare your script:**
Ensure your script is compatible with the correct version of the ROM you are using (English Red, Blue or Yellow).

2. **Download the appropriate template:**
Get the correct installer .asm file based on your game version:
- Use the Red/Blue template for Pokémon Red or Blue.
- Use the Yellow template for Pokémon Yellow.

3. **Edit the installer file:**
Open the .asm file with a text editor (Notepad++ is recommended) and follow the inline instructions to:
- Set the script number you want for your script
- Set a custom installation addresses
- Insert your assembly code

4. **Use a compiler:**
Compile your script using [QuickRGBDS](https://github.com/imanoz/QuickRGBDS) or RGBDS to generate the final binary payload.

5. **Import via Nickname Writer:**
Use Nickname Writer to inject the full hex code (installer + script) into your save file.

6. **Verify in TimOS:**
Once in-game, open the TimOS script selector and run the script number you changed earlier. If everything installed correctly, the total number of available scripts should have been increased up to this number.



