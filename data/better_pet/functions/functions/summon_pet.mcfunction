scoreboard players set @s blow_horn 0
execute if data entity @s {SelectedItem:{tag:{pet_type:"wolf"}}} run summon wolf 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"mule"}}} run summon mule 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"donkey"}}} run summon donkey 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"parrot"}}} run summon parrot 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"horse"}}} run summon horse 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"llama"}}} run summon llama 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"zombie_horse"}}} run summon wolf 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"skeleton_horse"}}} run summon skeleton_horse 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"cat"}}} run summon wolf 8 -63 8 {Tags:["marker"]}
execute if data entity @s {SelectedItem:{tag:{pet_type:"fox"}}} run summon wolf 8 -63 8 {Tags:["marker"]}
function better_pet:functions/summon_pet_20
item replace block 8 -64 8 container.1 from entity @s weapon
execute as @e[tag=marker] run function better_pet:functions/summon_pet2
data modify block 8 -64 8 Items.[1].tag.instrument set value "minecraft:ponder_goat_horn"
data remove block 8 -64 8 Items.[1].tag.Enchantments 
data modify block 8 -64 8 Items.[1].tag.display.Lore set value ['{"text":"站立吹号角将宠物传送至身边","color":"green","italic":false}','{"text":"在宠物身边下蹲吹号角可将宠物收起","color":"green","italic":false}']
data modify block 8 -64 8 Items.[1].tag.marker set value "pet_horn"
data modify block 8 -64 8 Items.[1].tag.pet_UUID set from entity @e[limit=1,tag=marker] UUID
tp @e[tag=marker,tag=pet] @s
tag @e[distance=0..1] remove marker
title @p actionbar {"text": "宠物已放出","color": "green"}
item replace entity @s weapon from block 8 -64 8 container.1
