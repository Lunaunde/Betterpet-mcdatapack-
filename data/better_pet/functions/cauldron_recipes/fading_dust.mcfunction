execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:4b}}] at @s if block ~ ~ ~ water_cauldron[level=3] run execute as @e[distance=0..1,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:4b}}] at @s if block ~ ~ ~ water_cauldron[level=3] run execute as @e[distance=0..1,type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] at @s if block ~ ~ ~ water_cauldron[level=3] run tag @s add recipe_fading_dust
execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust,tag=!stop] run execute as @e[distance=0..1,type=item,tag=!recipe_fading_dust] at @s if block ~ ~ ~ water_cauldron[level=3] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust,tag=!stop] run setblock ~ ~ ~ minecraft:cauldron
execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust,tag=!stop] run playsound block.lava.extinguish voice @a ~ ~ ~
execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust,tag=!stop] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust,tag=!stop] run data modify entity @s Item.tag set value {marker:"fading_dust",display:{Lore:['{"text":"用于将宠物转变为原样","color":"green","italic":false}','{"text":"丢弃在宠物身边下蹲5秒且手持宠物号角即可","color":"green","italic":false}'],Name:'{"text":"褪色之泪","color":"gray","italic":false}'}}
tag @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},tag=recipe_fading_dust] add stop
