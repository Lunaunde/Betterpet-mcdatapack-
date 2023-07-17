effect give @s glowing 1 0 true 
execute at @a[scores={keep_sneak=1..2}] as @s[distance=0..4] run function better_pet:functions/fading2
execute at @a[scores={keep_sneak=0}] as @s[distance=0..4] run scoreboard players set @s lasting 0
execute at @s[scores={lasting=0},tag=pet] run particle wax_on ~ ~ ~ 0.5 0.5 0.5 1 1
execute at @s[scores={lasting=1..80},tag=pet] run particle scrape ~ ~ ~ 0.5 0.5 0.5 1 1
execute as @s[scores={lasting=100},tag=pet] run function better_pet:functions/fading3