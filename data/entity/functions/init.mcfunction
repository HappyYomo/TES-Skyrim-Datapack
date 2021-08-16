#> entity:init
#
# Entityの初期化
#
# @within function command:tick

# ステータス
	## 体力
		execute unless data entity @s ArmorItems[3].tag.Health store result score @s Health store result score @s Health.Max run data get entity @s Health 5
		execute if data entity @s ArmorItems[3].tag.Health store result score @s Health store result score @s Health.Max run data get entity @s ArmorItems[3].tag.Health
# 初期化完了
	tag @s add Entity
