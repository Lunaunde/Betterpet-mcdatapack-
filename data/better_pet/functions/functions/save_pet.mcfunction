scoreboard players set @p blow_horn 0 
data modify storage uuid_comperison UUID set from entity @s UUID
execute store success storage uuid_comperison success int 1 run data modify storage uuid_comperison UUID set from entity @p SelectedItem.tag.pet_UUID
execute if data storage uuid_comperison {success:0} run function better_pet:functions/save_pet2