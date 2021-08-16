#Determinded
# 
#> crafting
#@public
 #declare tag crafting

#システム1
execute as @a at @s at @e[tag=crafting,distance=..5] run function command:recipes/magic/craftings
execute as @a at @s at @e[tag=crafting,distance=..5] run function command:recipes/weapon/craftings
execute as @a at @s at @e[tag=crafting,distance=..5] run function command:recipes/item/craftings
execute as @a at @s at @e[tag=crafting,distance=..5] run function command:recipes/armour/craftings

#システム2
execute as @a if data entity @s {SelectedItem:{tag:{Damage:0}}} run function command:recipes/vanilla_item/exchange_weapon
execute if entity @a[nbt={Inventory:[{Slot:103b,tag:{Damage:0}}]}] run function command:recipes/vanilla_item/exchange_helmet
execute if entity @a[nbt={Inventory:[{Slot:102b,tag:{Damage:0}}]}] run function command:recipes/vanilla_item/exchange_chestplate
execute if entity @a[nbt={Inventory:[{Slot:101b,tag:{Damage:0}}]}] run function command:recipes/vanilla_item/exchange_leggings
execute if entity @a[nbt={Inventory:[{Slot:100b,tag:{Damage:0}}]}] run function command:recipes/vanilla_item/exchange_boots