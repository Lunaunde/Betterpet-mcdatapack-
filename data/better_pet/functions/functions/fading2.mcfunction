data modify storage uuid_comperison UUID set from entity @s
execute store success storage uuid_comperison success int 1 run data modify storage uuid_comperison UUID set from entity @p SelectedItem.tag.pet_UUID
execute if data storage uuid_comperison {success:1} run execute at @p run scoreboard players add @s lasting 1
execute unless data storage uuid_comperison {success:1} run execute at @p run scoreboard players set @s lasting 0
