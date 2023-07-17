item replace entity @s weapon with minecraft:totem_of_undying
data modify entity @s NoAI set value 0
execute at @s run playsound block.enchantment_table.use voice @a ~ ~ ~
effect clear @s
tag @s remove dying
scoreboard players set @s lasting 0