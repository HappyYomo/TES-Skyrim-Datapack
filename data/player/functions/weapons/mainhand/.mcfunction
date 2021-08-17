#> player:weapons/mainhand/
#
# アイテムを持っていたら
#
# @within function player:tick

# 最大体力増加
	execute if data entity @s SelectedItem.tag.Status.Health store result score $Amount Temporary run data get entity @s SelectedItem.tag.Status.Health
	execute if score $Amount Temporary matches ..2147483647 unless score @s Health.Mainhand = $Amount Temporary run function player:weapons/mainhand/health/add
	execute if entity @s[scores={Health.Mainhand=..2147483647}] unless data entity @s SelectedItem.tag.Status.Health run function player:weapons/mainhand/health/remove
# 最大マジカ増加
	execute if data entity @s SelectedItem.tag.Status.Majika store result score $Amount Temporary run data get entity @s SelectedItem.tag.Status.Majika
	execute if score $Amount Temporary matches ..2147483647 unless score @s Majika.Mainhand = $Amount Temporary run function player:weapons/mainhand/majika/add
	execute if entity @s[scores={Majika.Mainhand=..2147483647}] unless data entity @s SelectedItem.tag.Status.Majika run function player:weapons/mainhand/majika/remove
# 攻撃力増加
	execute if data entity @s SelectedItem.tag.Status.Attack store result score $Amount Temporary run data get entity @s SelectedItem.tag.Status.Attack
	execute if score $Amount Temporary matches ..2147483647 unless score @s Attack.Mainhand = $Amount Temporary run function player:weapons/mainhand/attack/add
	execute if entity @s[scores={Attack.Mainhand=..2147483647}] unless data entity @s SelectedItem.tag.Status.Attack run function player:weapons/mainhand/attack/remove
# Tagを付ける
	execute if entity @s[tag=!Having.Mainhand] run tag @s add Having.Mainhand
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Amount
# 
#> ScoreHolder
#@within function player:weapons/mainhand/**
 #declare score_holder $Amount
# 
#> Tag
#@within function player:weapons/mainhand/*
#@within function player:tick
 #declare tag Having.Mainhand
