
execute store result score block bsc run data get storage temp:temp blocks[0].id

function bsc:set

data modify block ~ ~ ~ Items set from storage temp:temp blocks[0].data.Items
data modify block ~ ~ ~ Age set from storage temp:temp blocks[0].data.Age
data modify block ~ ~ ~ author set from storage temp:temp blocks[0].data.author
data modify block ~ ~ ~ auto set from storage temp:temp blocks[0].data.auto
data modify block ~ ~ ~ Bees set from storage temp:temp blocks[0].data.Bees
data modify block ~ ~ ~ blockState set from storage temp:temp blocks[0].data.blockState
data modify block ~ ~ ~ Book set from storage temp:temp blocks[0].data.Book
data modify block ~ ~ ~ BrewTime set from storage temp:temp blocks[0].data.BrewTime
data modify block ~ ~ ~ Color set from storage temp:temp blocks[0].data.Color
data modify block ~ ~ ~ Command set from storage temp:temp blocks[0].data.Command
data modify block ~ ~ ~ conditionMet set from storage temp:temp blocks[0].data.conditionMet
data modify block ~ ~ ~ CookingTimes set from storage temp:temp blocks[0].data.CookingTimes
data modify block ~ ~ ~ CookingTotalTimes set from storage temp:temp blocks[0].data.CookingTotalTimes
data modify block ~ ~ ~ CustomName set from storage temp:temp blocks[0].data.CustomName
data modify block ~ ~ ~ CookTime set from storage temp:temp blocks[0].data.CookTime
data modify block ~ ~ ~ CookTimeTotal set from storage temp:temp blocks[0].data.CookTimeTotal
data modify block ~ ~ ~ Delay set from storage temp:temp blocks[0].data.Delay
data modify block ~ ~ ~ ExactTeleport set from storage temp:temp blocks[0].data.ExactTeleport
data modify block ~ ~ ~ ExitPortal set from storage temp:temp blocks[0].data.ExitPortal
data modify block ~ ~ ~ extending set from storage temp:temp blocks[0].data.extending
data modify block ~ ~ ~ facing set from storage temp:temp blocks[0].data.facing
data modify block ~ ~ ~ final_state set from storage temp:temp blocks[0].data.final_state
data modify block ~ ~ ~ FlowerPos set from storage temp:temp blocks[0].data.FlowerPos
data modify block ~ ~ ~ Fuel set from storage temp:temp blocks[0].data.Fuel
data modify block ~ ~ ~ GlowingText set from storage temp:temp blocks[0].data.GlowingText
data modify block ~ ~ ~ id set from storage temp:temp blocks[0].data.id
data modify block ~ ~ ~ ignoreEntities set from storage temp:temp blocks[0].data.ignoreEntities
data modify block ~ ~ ~ integrity set from storage temp:temp blocks[0].data.integrity
data modify block ~ ~ ~ joint set from storage temp:temp blocks[0].data.joint
data modify block ~ ~ ~ keepPacked set from storage temp:temp blocks[0].data.keepPacked
data modify block ~ ~ ~ LastExecution set from storage temp:temp blocks[0].data.LastExecution
data modify block ~ ~ ~ LastOutput set from storage temp:temp blocks[0].data.LastOutput
data modify block ~ ~ ~ Levels set from storage temp:temp blocks[0].data.Levels
data modify block ~ ~ ~ Lock set from storage temp:temp blocks[0].data.Lock
data modify block ~ ~ ~ LootTable set from storage temp:temp blocks[0].data.LootTable
data modify block ~ ~ ~ LootTableSeed set from storage temp:temp blocks[0].data.LootTableSeed
data modify block ~ ~ ~ MaxNearbyEntities set from storage temp:temp blocks[0].data.MaxNearbyEntities
data modify block ~ ~ ~ MaxSpawnDelay set from storage temp:temp blocks[0].data.MaxSpawnDelay
data modify block ~ ~ ~ metadata set from storage temp:temp blocks[0].data.metadata
data modify block ~ ~ ~ MinSpawnDelay set from storage temp:temp blocks[0].data.MinSpawnDelay
data modify block ~ ~ ~ mirror set from storage temp:temp blocks[0].data.mirror
data modify block ~ ~ ~ mode set from storage temp:temp blocks[0].data.mode
data modify block ~ ~ ~ name set from storage temp:temp blocks[0].data.name
data modify block ~ ~ ~ OutputSignal set from storage temp:temp blocks[0].data.OutputSignal
data modify block ~ ~ ~ Page set from storage temp:temp blocks[0].data.Page
data modify block ~ ~ ~ Patterns set from storage temp:temp blocks[0].data.Patterns
data modify block ~ ~ ~ pool set from storage temp:temp blocks[0].data.pool
data modify block ~ ~ ~ posX set from storage temp:temp blocks[0].data.posX
data modify block ~ ~ ~ posY set from storage temp:temp blocks[0].data.posY
data modify block ~ ~ ~ posZ set from storage temp:temp blocks[0].data.posZ
data modify block ~ ~ ~ powered set from storage temp:temp blocks[0].data.powered
data modify block ~ ~ ~ Primary set from storage temp:temp blocks[0].data.Primary
data modify block ~ ~ ~ progress set from storage temp:temp blocks[0].data.progress
data modify block ~ ~ ~ RecordItem set from storage temp:temp blocks[0].data.RecordItem
data modify block ~ ~ ~ RequiredPlayerRange set from storage temp:temp blocks[0].data.RequiredPlayerRange
data modify block ~ ~ ~ rotation set from storage temp:temp blocks[0].data.rotation
data modify block ~ ~ ~ Secondary set from storage temp:temp blocks[0].data.Secondary
data modify block ~ ~ ~ seed set from storage temp:temp blocks[0].data.seed
data modify block ~ ~ ~ showair set from storage temp:temp blocks[0].data.showair
data modify block ~ ~ ~ showboundingbox set from storage temp:temp blocks[0].data.showboundingbox
data modify block ~ ~ ~ sizeX set from storage temp:temp blocks[0].data.sizeX
data modify block ~ ~ ~ sizeY set from storage temp:temp blocks[0].data.sizeY
data modify block ~ ~ ~ sizeZ set from storage temp:temp blocks[0].data.sizeZ
data modify block ~ ~ ~ SkullOwner set from storage temp:temp blocks[0].data.SkullOwner
data modify block ~ ~ ~ source set from storage temp:temp blocks[0].data.source
data modify block ~ ~ ~ SpawnCount set from storage temp:temp blocks[0].data.SpawnCount
data modify block ~ ~ ~ SpawnData set from storage temp:temp blocks[0].data.SpawnData
data modify block ~ ~ ~ SpawnPotentials set from storage temp:temp blocks[0].data.SpawnPotentials
data modify block ~ ~ ~ SpawnRange set from storage temp:temp blocks[0].data.SpawnRange
data modify block ~ ~ ~ SuccessCount set from storage temp:temp blocks[0].data.SuccessCount
data modify block ~ ~ ~ Target set from storage temp:temp blocks[0].data.Target
data modify block ~ ~ ~ target set from storage temp:temp blocks[0].data.target
data modify block ~ ~ ~ Text1 set from storage temp:temp blocks[0].data.Text1
data modify block ~ ~ ~ Text2 set from storage temp:temp blocks[0].data.Text2
data modify block ~ ~ ~ Text3 set from storage temp:temp blocks[0].data.Text3
data modify block ~ ~ ~ Text4 set from storage temp:temp blocks[0].data.Text4
data modify block ~ ~ ~ TrackOutput set from storage temp:temp blocks[0].data.TrackOutput
data modify block ~ ~ ~ TransferCooldown set from storage temp:temp blocks[0].data.TransferCooldown
data modify block ~ ~ ~ UpdateLastExecution set from storage temp:temp blocks[0].data.UpdateLastExecution
data modify block ~ ~ ~ x set from storage temp:temp blocks[0].data.x
data modify block ~ ~ ~ y set from storage temp:temp blocks[0].data.y
data modify block ~ ~ ~ z set from storage temp:temp blocks[0].data.z
data remove storage temp:temp blocks[0]
