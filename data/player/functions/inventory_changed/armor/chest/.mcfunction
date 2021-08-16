#> player:inventory_changed/armor/chest/
#
# 胸当を装備していたら
#
# @within function player:inventory_changed/

# 体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Health
	execute unless score @s Health.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/health
