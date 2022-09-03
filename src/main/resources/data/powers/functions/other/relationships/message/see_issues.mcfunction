
# execute unless score minecraft relationship matches 1 run 
tellraw @s {"text":"","color":"red"}
tellraw @s {"text":"-----[ Warnings/Issues ]-----","color":"red"}

execute unless score minecraft relationship matches 1 run tellraw @s ["",{"text":"\n","color":"red"},{"text":"- ","color":"red"},{"text":"Minecraft Version is less then 1.19:","bold":true,"color":"red"},{"text":" This means that some things will break, and simply not work. Your game may even crash. I do not guarantee stability with versions less then 1.19. I will not fix bugs caused by you runing the datapack in versions less then 1.19. Use at your own risk. ","color":"red"}]

execute unless score nbtcrafting relationship matches 1 run tellraw @s ["",{"text":"\n","color":"red"},{"text":"- ","color":"red"},{"text":"Mod NBT Crafting is not installed(","bold":true,"color":"red"},{"text":"Link","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/mc-mods/nbt-crafting"}},{"text":"): This means that the superpower crafting master will have lose most of its major crafting recipes. I do not recomend too go without this mod. ","bold":true,"color":"red"}]

execute unless score gravity_changer relationship matches 1 run tellraw @s ["",{"text":"\n","color":"red"},{"text":"- Mod Gravity API is not installed(","color":"red"},{"text":"Link","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://modrinth.com/mod/gravity-api"}},{"text":"): This will make the superpower reverse gravity stop working, and be unpickable. As well as make the superpower spider WAY less good. ","color":"red"}]

execute unless score chunk_loader relationship matches 1 run tellraw @s ["",{"text":"\n","color":"red"},{"text":"- Mod Simple Chunk Loader is not installed("},{"text":"Link","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/mc-mods/simple-chunkloader-fabric"}},{"text":"): This will make the superpower Crafting Master a little less useful, as the items from that mod will only be craftable by the master crafter. "}]

tellraw @s {"text":"","color":"red"}
tellraw @s {"text":"","color":"red"}

