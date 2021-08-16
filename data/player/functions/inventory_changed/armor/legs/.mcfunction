#> player:inventory_changed/armor/legs/
#
# 脚を装備していたら
#
# @within function player:inventory_changed/

# 体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Health
	execute unless score @s Health.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/health
