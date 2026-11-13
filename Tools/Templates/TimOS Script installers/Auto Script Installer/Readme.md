## Auto Script installer

An automated installer for adding custom scripts to the [TimOS Script Selector](https://glitchcity.wiki/wiki/Guides:Nickname_Writer_Codes#Installing_a_RAM_writer_environment_(TimOS)). It automatically finds unused memory and handles the necessary addresses, eliminating the need for manual customization.


### ⚠️ Restrictions

**This installer is compatible ONLY with relative-address scripts.**

The script must not contain `CALL` or `JP` instructions targeting addresses within the script. Since it can be installed at a different memory address each time, static addresses are incompatible.

In case your script contains static jumps or calls, use the [Manual Installer](https://github.com/imanoz/PokemonACE/tree/main/Tools/Templates/TimOS%20Script%20installers/Manual%20Script%20Installer) instead.

---

### Installation

#### 1. Prepare Your Script
* First, calculate your script's length in bytes and convert it to a hexadecimal value.
* Append the resulting hex value directly after the Auto Installer's hex code.
* Then, append your script's hex code

The complete hex code should consist of:

**Installer → Script Length → Script Code**

#### 2. Install via Nickname Writer
Install the complete hex code over Nickname Writer as usual.

The installer will automatically:
* Find an available memory location.
* Determine the next available script selector number.
* Update the selector's jump table with the script's installation address.
* Install the script into the selector.

#### 3. Verify installation
Once the installation is complete, open the TimOS Script Selector and run the newly installed script.

If the installation was successful, the total number of available scripts will have increased by one, and your script should run normally.

---

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

