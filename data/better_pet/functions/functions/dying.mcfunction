execute as @e[tag=pet] unless data entity @s {HandItems:[{id:"minecraft:totem_of_undying"}]} run tag @s add dying
execute as @e[tag=dying] run function better_pet:functions/dying2
execute as @e[tag=dying,scores={lasting=100}] run function better_pet:functions/dying3