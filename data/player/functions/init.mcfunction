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
	## マジカ
		execute store result score @s Majika.Max run scoreboard players set @s Majika 100
		scoreboard players set @s Majika.Recov.Dur 100
		scoreboard players set @s Majika.Recov.Per 5
	## 攻撃力
		scoreboard players set @s Attack 1
		scoreboard players set @s Weapon.Charge 0
	## 防御力
		scoreboard players set @s Defense 0
# ID
	execute store result score @s ID run scoreboard players add $ID.Index Global 1
# 
#> ScoreHolder
#@private
 #declare score_holder $ID.Index
