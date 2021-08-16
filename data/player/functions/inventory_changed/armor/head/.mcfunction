#> player:inventory_changed/armor/head/
#
# 帽子を被っていたら
#
# @within function player:inventory_changed/

# 体力増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:103b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:103b}].tag.Health
	execute unless score @s Health.Head = $Amount Temporary run function player:inventory_changed/armor/head/health
# 防御力がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:103b}].tag.Defense store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:103b}].tag.Defense
	execute unless score @s Defense.Head = $Amount Temporary run function player:inventory_changed/armor/head/defense
# マジカ増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:103b}].tag.Magica store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:103b}].tag.Magica
	execute unless score @s Magica.Head = $Amount Temporary run function player:inventory_changed/armor/head/magica
