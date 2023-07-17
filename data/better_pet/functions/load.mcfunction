tellraw @a "Reloaded."
forceload add 8 8
fill 10 -64 10 6 -59 6 minecraft:bedrock
fill 9 -63 9 7 -60 7 minecraft:air
setblock 8 -64 8 barrel{Items:[{Slot:0b,id:"minecraft:goat_horn",Count:1b,tag:{instrument:"minecraft:ponder_goat_horn",marker:"pet_horn",display:{Lore:['{"text":"站立吹号角将宠物传送至身边","color":"green","italic":false}','{"text":"在宠物身边下蹲吹号角可将宠物收起","color":"green","italic":false}'],Name:'{"text":"宠物号角(可改名)","color":"dark_purple","italic":false}'}}}]}
#创建计分板
scoreboard objectives add blow_horn minecraft.used:minecraft.goat_horn
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add keep_sneak dummy
scoreboard objectives add lasting dummy
scoreboard objectives add recipe_pet_star dummy