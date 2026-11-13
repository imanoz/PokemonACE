# 🏃 SuperSpeed+

This script doubles the speed of all Overworld activity while it’s active.

Additionally, holding button A makes the player move at extremely high speed — similar to the fast-forward feature in emulators.

###  ⚠ Warnings
  <ul>
    <li>The constant effect is achieved using OAM DMA manipulation, which keeps the script running in the background. If you are already using this method, installing the script will overwrite it and break any existing functionality.</li>
    <li>Due to its nature, this script cannot survive a game reset. You will need to activate it again.</li>
  </ul>

-----
### Logic Behind the Hack

  <p>The effect is achieved using <strong>OAM DMA manipulation</strong>, responsible for running the script constantly in the background, chained with a <strong>Stack inspection</strong> routine, that allows running a custom script in sync with overworld activity.</p>

Here's how it works:

- The DMA manipulation constantly checks the stack for a specific return address used by the [DelayFrame](https://github.com/pret/pokeyellow/blob/bc2354dd6626ce28bb9561547ed2107cfa56c18e/home/overworld.asm#L44) function, commonly called during Overworld activity.

- When this return address is detected, it is replaced by a custom pointer instead.

- The pointed routine runs in sync with the overworld loop, allowing for a smooth integration.

- If button A is pressed, the script consumes all 8 frames during the transition to a new tile.
  
- Once the script is done, it then returns to the main game loop — but skips one additional Overworld delay, effectively increasing the overall speed. 

The above technique allows the custom routine to run at exactly the correct moment, seamlessly blending with the game's natural flow and making frame-based manipulations like speeding up movement possible without crashing or creating graphic glitches.








