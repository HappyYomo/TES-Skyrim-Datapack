#> player:weapons/offhand/
#
# 
#
# @within function player:tick

# 最大体力増加
	execute if data entity @s Inventory[{Slot:-106b}].tag.Status.Health store result score $Amount Temporary run data get entity @s Inventory[{Slot:-106b}].tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Offhand = $Amount Temporary run function player:weapons/offhand/health/add
	execute if entity @s[scores={Health.Offhand=..2147483647}] unless data entity @s Inventory[{Slot:-106b}].tag.Status.Health run function player:weapons/offhand/health/remove
# 最大マジカ増加
	execute if data entity @s Inventory[{Slot:-106b}].tag.Status.Majika store result score $Amount Temporary run data get entity @s Inventory[{Slot:-106b}].tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Offhand = $Amount Temporary run function player:weapons/offhand/majika/add
	execute if entity @s[scores={Majika.Offhand=..2147483647}] unless data entity @s Inventory[{Slot:-106b}].tag.Status.Majika run function player:weapons/offhand/majika/remove
# 攻撃力増加
	execute if data entity @s Inventory[{Slot:-106b}].tag.Status.Attack store result score $Amount Temporary run data get entity @s Inventory[{Slot:-106b}].tag.Status.Attack
	execute if score $Amount Temporary matches ..2147483647 unless score @s Attack.Offhand = $Amount Temporary run function player:weapons/offhand/attack/add
	execute if entity @s[scores={Attack.Offhand=..2147483647}] unless data entity @s Inventory[{Slot:-106b}].tag.Status.Attack run function player:weapons/offhand/attack/remove
# Tagを付ける
	execute if entity @s[tag=!Having.Offhand] run tag @s add Having.Offhand
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Amount
# 
#> ScoreHolder
#@within function player:weapons/offhand/**
 #declare score_holder $Amount
# 
#> Tag
#@within function player:weapons/offhand/*
#@within function player:tick
 #declare tag Having.Offhand
