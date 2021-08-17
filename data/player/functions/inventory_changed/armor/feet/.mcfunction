#> player:inventory_changed/armor/feet/
#
# 足を装備していたら
#
# @within function player:inventory_changed/

# 最大体力
	execute if data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Health store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/health/add
	execute if entity @s[scores={Health.Feet=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Health run function player:inventory_changed/armor/feet/health/remove
# 最大マジカ
	execute if data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Majika store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/majika/add
	execute if entity @s[scores={Majika.Feet=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Majika run function player:inventory_changed/armor/feet/majika/remove
# 防御力
	execute if data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Defense store result score $Amount Temporary run data get storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Defense
	execute if score $Amount Temporary matches ..2147483647 unless score @s Defense.Feet = $Amount Temporary run function player:inventory_changed/armor/feet/defense/add
	execute if entity @s[scores={Defense.Feet=..2147483647}] unless data storage tesv_whole: InventoryCopy[{Slot:100b}].tag.Status.Defense run function player:inventory_changed/armor/feet/defense/remove
# Tagを付ける
	execute if entity @s[tag=!Wearing.Feet] run tag @s add Wearing.Feet
# 
#> Tag
#@within function player:inventory_changed/armor/feet/*
#@within function player:inventory_changed/
 #declare tag Wearing.Feet
