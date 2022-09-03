# cheaks what mods and datapacks are installed
## set requirements, 
### 0 = nothing
### 1 = needed for a part of the datapack too work
### 2 = needed or datapack will break
scoreboard players set minecraft needed_relationship 1
scoreboard players set origins needed_relationship 2
scoreboard players set pekui needed_relationship 2

scoreboard players set gravity_changer needed_relationship 1

scoreboard players set nbtcrafting needed_relationship 1
scoreboard players set ender_bundle needed_relationship 1
scoreboard players set chunk_loader needed_relationship 1

scoreboard players set carpet needed_relationship 0
scoreboard players set scarpet needed_relationship 1

scoreboard players set immersive_portals needed_relationship 0

## reset
scoreboard players set minecraft relationship 0
scoreboard players set origins relationship 0
scoreboard players set pekui relationship 0

scoreboard players set gravity_changer relationship 0

scoreboard players set nbtcrafting relationship 0
scoreboard players set chunk_loader relationship 0

scoreboard players set carpet relationship 0
scoreboard players set scarpet relationship 0

scoreboard players set immersive_portals relationship 0

## find
function powers:other/relationships/old_minecraft
function powers:other/relationships/mods/origins
function powers:other/relationships/mods/pekui

function powers:other/relationships/mods/gravity_changer

function powers:other/relationships/mods/nbtcrafting
function powers:other/relationships/mods/chunk_loader

function powers:other/relationships/mods/carpet/carpet
function powers:other/relationships/mods/carpet/scarpet

function powers:other/relationships/mods/immersive_portals

## cheak
function powers:other/relationships/message/message
