#> player:inventory_changed/armor/feet/
#
# 足を履いていたら
#
# @within function player:inventory_changed/

# 体力増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:100b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:100b}].tag.Health
	execute unless score @s Health.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/health
# 防御力がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:100b}].tag.Defense store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:100b}].tag.Defense
	execute unless score @s Defense.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/defense
# マジカ増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:100b}].tag.Magica store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:100b}].tag.Magica
	execute unless score @s Magica.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/magica
