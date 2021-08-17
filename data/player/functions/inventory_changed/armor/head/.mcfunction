#> player:inventory_changed/armor/head/
#
# 頭を装備していたら
#
# @within function player:inventory_changed/

# 最大体力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Head = $Amount Temporary run function player:inventory_changed/armor/head/health/add
	execute if entity @s[scores={Health.Head=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Health run function player:inventory_changed/armor/head/health/remove
# 最大マジカ増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Majika store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Head = $Amount Temporary run function player:inventory_changed/armor/head/majika/add
	execute if entity @s[scores={Majika.Head=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Majika run function player:inventory_changed/armor/head/majika/remove
# 防御力増加
	execute if data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Defense store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Defense
	execute if score $Amount Temporary matches ..2147483647 unless score @s Defense.Head = $Amount Temporary run function player:inventory_changed/armor/head/defense/add
	execute if entity @s[scores={Defense.Head=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:103b}].tag.Status.Defense run function player:inventory_changed/armor/head/defense/remove
# Tagを付ける
	execute if entity @s[tag=!Wearing.Head] run tag @s add Wearing.Head
# 
#> Tag
#@within function player:inventory_changed/armor/head/*
#@within function player:inventory_changed/
 #declare tag Wearing.Head
