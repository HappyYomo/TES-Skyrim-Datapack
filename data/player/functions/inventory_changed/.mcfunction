#> player:inventory_changed/
#
# インベントリーを変更したら
#
# @within advancement player:inventory_changed

# Inventoryをコピー
	data modify storage tesv_whole: InventoryCopy set from entity @s Inventory
# 装備をしていたら
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Armor run function player:inventory_changed/armor/head/
	execute if data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Armor run function player:inventory_changed/armor/chest/
	execute if data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Armor run function player:inventory_changed/armor/legs/
	execute if data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Armor run function player:inventory_changed/armor/feet/
# 装備していなかったら
	execute if entity @s[tag=Wearing.Head] unless data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Armor run function player:inventory_changed/armor/head/without
	execute if entity @s[tag=Wearing.Chest] unless data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Armor run function player:inventory_changed/armor/chest/without
	execute if entity @s[tag=Wearing.Legs] unless data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Armor run function player:inventory_changed/armor/legs/without
	execute if entity @s[tag=Wearing.Feet] unless data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Armor run function player:inventory_changed/armor/feet/without
# 一時使用Storageをリセット
	data remove storage tesv_whole: InventoryCopy
# 一時使用ScoreHolderをリセット
	execute if score $Amount Temporary matches ..2147483647 run scoreboard players reset $Amount
# 進捗を剥奪
	advancement revoke @s only player:inventory_changed
# 
#> ScoreHolder
#@within function player:inventory_changed/**
 #declare score_holder $Amount
