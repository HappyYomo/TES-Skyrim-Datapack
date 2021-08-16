#> player:inventory_changed/armor/chest/
#
# 胸当を着ていたら
#
# @within function player:inventory_changed/

# 体力増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:102b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:102b}].tag.Health
	execute unless score @s Health.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/health
# 防御力がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:102b}].tag.Defense store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:102b}].tag.Defense
	execute unless score @s Defense.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/defense
# マジカ増加がついていたら
	execute if data storage tesv_whole: Inventory[{Slot:102b}].tag.Magica store result score $Amount Temporary run data get storage tesv_whole: Inventory[{Slot:102b}].tag.Magica
	execute unless score @s Magica.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/magica
