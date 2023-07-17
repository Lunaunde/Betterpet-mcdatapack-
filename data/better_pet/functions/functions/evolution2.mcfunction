execute at @s run particle wax_on ~ ~ ~ 0.5 0.5 0.5 1 50
execute at @s run playsound item.trident.return voice @a ~ ~ ~
kill @e[type=item,limit=1,distance=0]
data modify block 8 -64 8 Items.[0].tag.pet_UUID set from entity @s UUID

execute if entity @s[type=minecraft:wolf] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "wolf"
execute if entity @s[type=minecraft:cat] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "cat"
execute if entity @s[type=minecraft:llama] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "llama"
execute if entity @s[type=minecraft:mule] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "mule"
execute if entity @s[type=minecraft:parrot] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "parrot"
execute if entity @s[type=minecraft:donkey] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "donkey"
execute if entity @s[type=minecraft:skeleton_horse] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "skeleton_horse"
execute if entity @s[type=minecraft:zombie_horse] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "zombie_horse"
execute if entity @s[type=minecraft:fox] run data modify block 8 -64 8 Items.[0].tag.pet_type set value "fox"
function better_pet:functions/evolution2_20

item replace entity @a[distance=0..4,limit=1] weapon from block 8 -64 8 container.0
item replace entity @s weapon with totem_of_undying
tag @s add pet
scoreboard players set @s lasting 0