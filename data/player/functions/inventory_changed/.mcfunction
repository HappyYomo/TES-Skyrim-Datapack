#> player:inventory_changed/
#
# インベントリーを変えたら
#
# @within advancement player:inventory_changed

# プレイヤーのインベントリーをコピー
	data modify storage tesv_whole: Inventory set from entity @s Inventory
# 装備を着ていたら
	execute if data storage tesv_whole: Inventory[{Slot:100b}] run function player:inventory_changed/armor/feet/
	execute if data storage tesv_whole: Inventory[{Slot:101b}] run function player:inventory_changed/armor/legs/
	execute if data storage tesv_whole: Inventory[{Slot:102b}] run function player:inventory_changed/armor/chest/
	execute if data storage tesv_whole: Inventory[{Slot:103b}] run function player:inventory_changed/armor/head/
# メイジローブ
	execute if predicate player:magerobe/common run scoreboard players set @s Mage 8
	execute if predicate player:magerobe/skilled run scoreboard players set @s Mage 6
	execute if predicate player:magerobe/over_load run scoreboard players set @s Mage 2
	execute if entity @s[scores={Mage=1..}] unless predicate player:magerobe/common unless predicate player:magerobe/skilled unless predicate player:magerobe/over_load run scoreboard players reset @s Mage
# 一時使用ScoreHolderをリセット
	execute if score $Amount Temporary matches ..2147483647 run scoreboard players reset $Amount
# 一時使用Storageをリセット
	data remove storage tesv_whole: Inventory
# 進捗を剥奪
	advancement revoke @s only player:inventory_changed
# 
#> ScoreHolder
#@within function player:inventory_changed/**
 #declare score_holder $Amount
