#> player:init
#
# プレイヤーを初期化
#
# @within function command:tick

# プレイヤーのステータス
	## 体力
		execute store result score @s Health.Max run scoreboard players set @s Health 100
		scoreboard players set @s Health.Recov.Dur 100
		scoreboard players set @s Health.Recov.Per 5
	## 魔力
		execute store result score @s Magica.Max run scoreboard players set @s Magica 100
		scoreboard players set @s Magica.Recov.Dur 100
		scoreboard players set @s Magica.Recov.Per 5
	## 攻撃力
		scoreboard players set @s Attack 1
		scoreboard players set @s Weapon.Charge 0
	## 防御力
		scoreboard players set @s Defense 0
# IDを振り分ける
	execute store result score @s ID run scoreboard players add $ID.Index Global 1
# 
#> Tag
#@public
 #declare tag Player
# 
#> ScoreHolder
#@private
 #declare score_holder $ID.Index
