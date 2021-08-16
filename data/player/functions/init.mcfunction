#> player:init
#
# プレイヤーを初期化
#
# @within function player:tick

# ステータス
	## 体力
		execute store result score @s Health.Max run scoreboard players set @s Health 100
		scoreboard players set @s Health.Recov.Dur 100
		scoreboard players set @s Health.Recov.Per 5
