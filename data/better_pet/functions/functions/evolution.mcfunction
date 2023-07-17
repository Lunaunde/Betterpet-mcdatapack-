effect give @s glowing 1 0 true 
execute at @s if entity @a[scores={keep_sneak=1..2}] run scoreboard players add @s lasting 1
execute at @s unless entity @a[scores={keep_sneak=1..2}] run scoreboard players set @s lasting 0
execute unless entity @s[scores={lasting=1..100}] at @s run particle wax_off ~ ~ ~ 0.5 0.5 0.5 1 1
execute at @s[scores={lasting=1..80}] run particle scrape ~ ~ ~ 0.5 0.5 0.5 1 1
execute as @s[scores={lasting=100}] run function better_pet:functions/evolution2