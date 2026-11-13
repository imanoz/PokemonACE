
## DMA Activator

Used to safely activate scripts that produce constant effects.

The activator changes the **OAM DMA routine** and transfers a small piece of code to the top of the unused stack space. This code then runs your custom script on every frame, located at `$DF1D`.

To install a new script, interrupts must first be disabled and re-enabled once the script transfer is complete.

To simplify this process and eliminate the need for manual compilation, **Auto DMA Script** is also provided.

### ⚠️ Restrictions

You can safely use approximately **70 bytes** for your script. Exceeding this limit may cause the stack to overwrite your code, eventually resulting in a game crash.

---

### How to use

#### 1. Run DMA Activator

It applies the OAM DMA manipulation. The activator runs silently in the background, so no visible effect will occur until a script is inserted.

#### 2. Insert your script

Prepare your script using **Auto DMA Script** or compile the asm code using **Manual DMA Script**. Then insert it in DMA execution point. The script is transferred to address `$DF1D` and takes effect immediately.

Auto DMA Script preparation:
* First, calculate your script's length in bytes and convert it to a hexadecimal value.
* Append the resulting hex value directly after the Auto DMA Script's hex code.
* Then, append your script's hex code.

The complete outcome should consist of:

**Auto DMA Script → Custom Code Length → Custom Code**

---

**Red/Blue DMA Activator**
```
21 80 ff 11 15 df f3 36 cd 23  
73 23 72 23 36 e2 0e 09 21 ce  
d8 cd 3a 12 d9 cd 1d df 0e 46  
3e c3 c9 c9
```

**Red/Blue Auto DMA Script**
```
21 c2 d8 4e 23 11 1d df f3 cd  
3a 12 d9
```

---

**Yellow DMA Activator**
```
21 80 ff 11 15 df f3 36 cd 23  
73 23 72 23 36 e2 0e 09 21 cd  
d8 cd ac 0e d9 cd 1d df 0e 46  
3e c3 c9 c9
```

**Yellow Auto DMA Script**
```
21 c1 d8 4e 23 11 1d df f3 cd  
ac 0e d9
```

