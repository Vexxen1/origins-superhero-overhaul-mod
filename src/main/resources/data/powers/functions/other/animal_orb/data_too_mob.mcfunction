
data modify storage powers:mob temp.animal set from entity @s SelectedItem.tag.animal
execute store result score MobID cal1 run data get storage powers:mob temp.animal.id

execute if score MobID cal1 matches 1 run summon minecraft:zombie_horse ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 2 run summon minecraft:wolf ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 3 run summon minecraft:trader_llama ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 4 run summon minecraft:skeleton_horse ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 5 run summon minecraft:parrot ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 6 run summon minecraft:mule ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 7 run summon minecraft:llama ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 8 run summon minecraft:horse ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 9 run summon minecraft:fox ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 10 run summon minecraft:donkey ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 11 run summon minecraft:cat ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 12 run summon minecraft:tropical_fish ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 13 run summon minecraft:strider ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 14 run summon minecraft:squid ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 15 run summon minecraft:sheep ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 16 run summon minecraft:salmon ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 17 run summon minecraft:rabbit ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 18 run summon minecraft:pufferfish ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 19 run summon minecraft:polar_bear ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 20 run summon minecraft:pig ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 21 run summon minecraft:panda ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 22 run summon minecraft:ocelot ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 23 run summon minecraft:mooshroom ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 24 run summon minecraft:cow ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 25 run summon minecraft:cod ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 26 run summon minecraft:chicken ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 27 run summon minecraft:bee ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 28 run summon minecraft:bat ~ ~ ~ {Tags:["spawned"]}
execute if score MobID cal1 matches 29 run summon minecraft:glow_squid ~ ~ ~ {Tags:["spawned"]}

data modify entity @e[tag=spawned,limit=1] NoGravity set from storage powers:mob temp.animal.data.NoGravity
data modify entity @e[tag=spawned,limit=1] AbsorptionAmount set from storage powers:mob temp.animal.data.AbsorptionAmount
data modify entity @e[tag=spawned,limit=1] Attributes set from storage powers:mob temp.animal.data.Attributes
data modify entity @e[tag=spawned,limit=1] Health set from storage powers:mob temp.animal.data.Health
data modify entity @e[tag=spawned,limit=1] InLove set from storage powers:mob temp.animal.data.InLove
data modify entity @e[tag=spawned,limit=1] Age set from storage powers:mob temp.animal.data.Age
data modify entity @e[tag=spawned,limit=1] ForcedAge set from storage powers:mob temp.animal.data.ForcedAge
data modify entity @e[tag=spawned,limit=1] LoveCause set from storage powers:mob temp.animal.data.LoveCause
data modify entity @e[tag=spawned,limit=1] Bred set from storage powers:mob temp.animal.data.Bred
data modify entity @e[tag=spawned,limit=1] EatingHaystack set from storage powers:mob temp.animal.data.EatingHaystack
data modify entity @e[tag=spawned,limit=1] Tame set from storage powers:mob temp.animal.data.Tame
data modify entity @e[tag=spawned,limit=1] Owner set from storage powers:mob temp.animal.data.Owner
data modify entity @e[tag=spawned,limit=1] Variant set from storage powers:mob temp.animal.data.Variant
data modify entity @e[tag=spawned,limit=1] HandItems set from storage powers:mob temp.animal.data.HandItems
data modify entity @e[tag=spawned,limit=1] ArmorItems set from storage powers:mob temp.animal.data.ArmorItems
data modify entity @e[tag=spawned,limit=1] SaddleItem set from storage powers:mob temp.animal.data.SaddleItem
data modify entity @e[tag=spawned,limit=1] ArmorItem set from storage powers:mob temp.animal.data.ArmorItem
data modify entity @e[tag=spawned,limit=1] CustomName set from storage powers:mob temp.animal.data.CustomName
data modify entity @e[tag=spawned,limit=1] Fire set from storage powers:mob temp.animal.data.Fire
data modify entity @e[tag=spawned,limit=1] HurtTime set from storage powers:mob temp.animal.data.HurtTime
data modify entity @e[tag=spawned,limit=1] DeathTime set from storage powers:mob temp.animal.data.DeathTime
data modify entity @e[tag=spawned,limit=1] Owner set from storage powers:mob temp.animal.data.Owner
data modify entity @e[tag=spawned,limit=1] Sitting set from storage powers:mob temp.animal.data.Sitting
data modify entity @e[tag=spawned,limit=1] AngerTime set from storage powers:mob temp.animal.data.AngerTime
data modify entity @e[tag=spawned,limit=1] CollarColor set from storage powers:mob temp.animal.data.CollarColor
data modify entity @e[tag=spawned,limit=1] ChestedHorse set from storage powers:mob temp.animal.data.ChestedHorse
data modify entity @e[tag=spawned,limit=1] Items set from storage powers:mob temp.animal.data.Items
data modify entity @e[tag=spawned,limit=1] Strength set from storage powers:mob temp.animal.data.Strength
data modify entity @e[tag=spawned,limit=1] DecorItem set from storage powers:mob temp.animal.data.DecorItem
data modify entity @e[tag=spawned,limit=1] cardinal_components set from storage powers:mob temp.animal.data.cardinal_components
data modify entity @e[tag=spawned,limit=1] UUID set from storage powers:mob temp.animal.data.UUID
data modify entity @e[tag=spawned,limit=1] FromBucket set from storage powers:mob temp.animal.data.FromBucket
data modify entity @e[tag=spawned,limit=1] Sheared set from storage powers:mob temp.animal.data.Sheared
data modify entity @e[tag=spawned,limit=1] Color set from storage powers:mob temp.animal.data.Color
data modify entity @e[tag=spawned,limit=1] RabbitType set from storage powers:mob temp.animal.data.RabbitType
data modify entity @e[tag=spawned,limit=1] MoreCarrotTicks set from storage powers:mob temp.animal.data.MoreCarrotTicks
data modify entity @e[tag=spawned,limit=1] PuffState set from storage powers:mob temp.animal.data.PuffState
data modify entity @e[tag=spawned,limit=1] AngryAt set from storage powers:mob temp.animal.data.AngryAt
data modify entity @e[tag=spawned,limit=1] Saddle set from storage powers:mob temp.animal.data.Saddle
data modify entity @e[tag=spawned,limit=1] MainGene set from storage powers:mob temp.animal.data.MainGene
data modify entity @e[tag=spawned,limit=1] HiddenGene set from storage powers:mob temp.animal.data.HiddenGene
data modify entity @e[tag=spawned,limit=1] Type set from storage powers:mob temp.animal.data.Type
data modify entity @e[tag=spawned,limit=1] EffectId set from storage powers:mob temp.animal.data.EffectId
data modify entity @e[tag=spawned,limit=1] EffectDuration set from storage powers:mob temp.animal.data.EffectDuration
data modify entity @e[tag=spawned,limit=1] IsChickenJockey set from storage powers:mob temp.animal.data.IsChickenJockey
data modify entity @e[tag=spawned,limit=1] EggLayTime set from storage powers:mob temp.animal.data.EggLayTime
data modify entity @e[tag=spawned,limit=1] HasNectar set from storage powers:mob temp.animal.data.HasNectar
data modify entity @e[tag=spawned,limit=1] HasStung set from storage powers:mob temp.animal.data.HasStung
data modify entity @e[tag=spawned,limit=1] TicksSincePollination set from storage powers:mob temp.animal.data.TicksSincePollination
data modify entity @e[tag=spawned,limit=1] CannotEnterHiveTicks set from storage powers:mob temp.animal.data.CannotEnterHiveTicks
data modify entity @e[tag=spawned,limit=1] CropsGrownSincePollination set from storage powers:mob temp.animal.data.CropsGrownSincePollination
data modify entity @e[tag=spawned,limit=1] HivePos set from storage powers:mob temp.animal.data.HivePos
data modify entity @e[tag=spawned,limit=1] ActiveEffects set from storage powers:mob temp.animal.data.ActiveEffects
data modify entity @e[tag=spawned,limit=1] FlowerPos set from storage powers:mob temp.animal.data.FlowerPos
data modify entity @e[tag=spawned,limit=1] BatFlags set from storage powers:mob temp.animal.data.BatFlags
data modify entity @e[tag=spawned,limit=1] DarkTicksRemaining set from storage powers:mob temp.animal.data.DarkTicksRemaining
data modify entity @e[tag=spawned,limit=1] Sitting set from storage powers:mob temp.animal.data.Sitting
data modify entity @e[tag=spawned,limit=1] Sleeping set from storage powers:mob temp.animal.data.Sleeping
data modify entity @e[tag=spawned,limit=1] Crouching set from storage powers:mob temp.animal.data.Crouching
data modify entity @e[tag=spawned,limit=1] Type set from storage powers:mob temp.animal.data.Type
data modify entity @e[tag=spawned,limit=1] Trusted set from storage powers:mob temp.animal.data.Trusted
data modify entity @e[tag=spawned,limit=1] Tags set from storage powers:mob temp.animal.data.Tags

tag @e[tag=spawned,limit=1] remove spawned
