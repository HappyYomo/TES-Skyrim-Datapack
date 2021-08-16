#> player:inventory_changed/armor/legs/
#
# 脚を穿いていたら
#
# @within function player:inventory_changed/

# 体力増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:101b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:101b}].tag.Health
	execute unless score @s Health.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/health
# 防御力がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:101b}].tag.Defense store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:101b}].tag.Defense
	execute unless score @s Defense.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/defense
# マジカ増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:101b}].tag.Magica store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:101b}].tag.Magica
	execute unless score @s Magica.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/magica
