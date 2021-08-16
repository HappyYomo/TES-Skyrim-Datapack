#> player:inventory_changed/armor/head/
#
# 頭を装備していたら
#
# @within function player:inventory_changed/

# 体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Health
	execute unless score @s Health.Head = $Amount Temporary run function player:inventory_changed/armor/head/health
# 防御力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Defense store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Defense
	execute unless score @s Defense.Head = $Amount Temporary run function player:inventory_changed/armor/head/defense
