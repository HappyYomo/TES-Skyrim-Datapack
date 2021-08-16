#> player:inventory_changed/armor/feet/
#
# 足を装備していたら
#
# @within function player:inventory_changed/

# 体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Health
	execute unless score @s Health.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/health
