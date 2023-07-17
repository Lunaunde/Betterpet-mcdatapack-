gamerule showDeathMessages false
tp @s 8 -63 8
title @p actionbar {"text": "宠物已收回","color": "green"}
item replace block 8 -64 8 container.1 from entity @p weapon
data modify block 8 -64 8 Items.[1].tag.instrument set value "minecraft:sing_goat_horn"
data modify block 8 -64 8 Items.[1].tag.Enchantments set value [{}]
data modify block 8 -64 8 Items.[1].tag.display.Lore set value ['{"text":"吹号角将宠物放出","color":"green","italic":false}']
data modify block 8 -64 8 Items.[1].tag.marker set value "save_pet_horn"
data modify block 8 -64 8 Items.[1].tag.pet_nbt set from entity @s
item replace entity @p weapon from block 8 -64 8 container.1
kill @s
gamerule showDeathMessages true