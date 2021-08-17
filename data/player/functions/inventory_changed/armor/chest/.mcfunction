#> player:inventory_changed/armor/chest/
#
# 胸当を装備していたら
#
# @within function player:inventory_changed/

# 最大体力
	execute if data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/health/add
	execute if entity @s[scores={Health.Chest=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Health run function player:inventory_changed/armor/chest/health/remove
# 最大マジカ
	execute if data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Majika store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/majika/add
	execute if entity @s[scores={Majika.Chest=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Majika run function player:inventory_changed/armor/chest/majika/remove
# 防御力
	execute if data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Defense store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Defense
	execute if score $Amount Temporary matches ..2147483647 unless score @s Defense.Chest = $Amount Temporary run function player:inventory_changed/armor/chest/defense/add
	execute if entity @s[scores={Defense.Chest=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:102b}].tag.Status.Defense run function player:inventory_changed/armor/chest/defense/remove
# Tagを付ける
	execute if entity @s[tag=!Wearing.Chest] run tag @s add Wearing.Chest
# 
#> Tag
#@within function player:inventory_changed/armor/chest/*
#@within function player:inventory_changed/
 #declare tag Wearing.Chest
