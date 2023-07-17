effect give @s fire_resistance 1 0 true
effect give @s resistance 1 4 true
effect give @s jump_boost 1 255 true
effect give @s glowing 1 0 true
effect give @s invisibility 1 0 true
execute as @s run data modify entity @s NoAI set value 1
execute at @s if entity @a[distance=0..3,scores={keep_sneak=1..2}] run scoreboard players add @s lasting 1
execute at @s if entity @a[distance=0..3,scores={keep_sneak=1..2}] run particle minecraft:enchant ~ ~1 ~ 0.5 1 0.5 1 6
execute at @s if entity @a[distance=0..3,scores={keep_sneak=1..2}] run title @a[distance=0..3,scores={keep_sneak=1..2}] actionbar {"text": "宠物正在复活中...","color": "green"}
execute at @s unless entity @a[distance=0..3,scores={keep_sneak=1..2}] run scoreboard players set @s lasting 0
execute at @s unless entity @a[distance=0..3,scores={keep_sneak=1..2}] run title @a[distance=0..3] actionbar {"text": "下蹲复活宠物","color": "yellow"}