execute at @s run particle wax_off ~ ~ ~ 0.5 0.5 0.5 1 50
execute at @s run playsound item.trident.return voice @a ~ ~ ~
kill @e[type=item,limit=1,distance=0]
data modify block 8 -64 8 Items.[0].tag.pet_UUID set from entity @s UUID
item replace entity @s weapon with minecraft:air
tag @s remove pet
title @p[scores={keep_sneak=1..2}] actionbar {"text": "宠物已驱逐","color": "gray"}
item replace entity @p[scores={keep_sneak=1..2}] weapon with air
scoreboard players set @s[scores={lasting=100}] lasting 0