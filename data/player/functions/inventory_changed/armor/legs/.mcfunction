#> player:inventory_changed/armor/legs/
#
# 脚を装備していたら
#
# @within function player:inventory_changed/

# 最大体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/health/add
	execute if entity @s[scores={Health.Legs=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Health run function player:inventory_changed/armor/legs/health/remove
# 最大マジカ増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Majika store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/majika/add
	execute if entity @s[scores={Majika.Legs=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Majika run function player:inventory_changed/armor/legs/majika/remove
# 防御力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Defense store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Defense
	execute if score $Amount Temporary matches ..2147483647 unless score @s Defense.Legs = $Amount Temporary run function player:inventory_changed/armor/legs/defense/add
	execute if entity @s[scores={Defense.Legs=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:101b}].tag.Status.Defense run function player:inventory_changed/armor/legs/defense/remove
# Tagを付ける
	execute if entity @s[tag=!Wearing.Legs] run tag @s add Wearing.Legs
# 
#> Tag
#@within function player:inventory_changed/armor/legs/*
#@within function player:inventory_changed/
 #declare tag Wearing.Legs
