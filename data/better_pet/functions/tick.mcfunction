function better_pet:functions/keep_sneak
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:wolf,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:cat,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:horse,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:mule,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:donkey,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:llama,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:parrot,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:wolf,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:cat,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:horse,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:mule,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:donkey,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:llama,limit=1,tag=pet] run function better_pet:functions/fading
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:parrot,limit=1,tag=pet] run function better_pet:functions/fading
function better_pet:functions/evolution_fading_20
function better_pet:cauldron_recipes/pet_star
function better_pet:cauldron_recipes/fading_dust
function better_pet:functions/lasting
function better_pet:functions/dying
execute at @a[scores={blow_horn=1..10000,keep_sneak=0},nbt={SelectedItem:{tag:{marker:"pet_horn"}}}] as @e[tag=pet] run function better_pet:functions/pet_tp
execute at @a[scores={blow_horn=1..10000,keep_sneak=1..2},nbt={SelectedItem:{tag:{marker:"pet_horn"}}}] as @e[distance=0..3,tag=pet] run function better_pet:functions/save_pet
execute as @a[scores={blow_horn=1..10000},nbt={SelectedItem:{tag:{marker:"save_pet_horn"}}}] at @s run function better_pet:functions/summon_pet
scoreboard players set @a[scores={blow_horn=1..10000}] blow_horn 0 
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] at @e[distance=0..3,tag=pet,limit=1] run particle wax_on ~ ~ ~ 0.5 0.5 0.5 1 1
execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,tag=pet,limit=1] run effect give @s glowing 1 0 true