execute at @e[type=item,nbt={Item:{tag:{marker:"pet_star"}}}] as @e[distance=0..3,type=minecraft:camel,limit=1,tag=!pet] run function better_pet:functions/evolution
execute at @e[type=item,nbt={Item:{tag:{marker:"fading_dust"}}}] as @e[distance=0..3,type=minecraft:camel,limit=1,tag=pet] run function better_pet:functions/fading