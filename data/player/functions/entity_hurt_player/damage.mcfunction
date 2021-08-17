#> player:entity_hurt_player/damage
#
# ダメージを与える
#
# @within function player:entity_hurt_player/filters/0

# 最大体力と防御力をコピー
	scoreboard players operation $Health.Max.Copy Temporary = @a[tag=This,distance=..0.0001] Health.Max
	scoreboard players operation $Defense.Copy Temporary = @a[tag=This,distance=..0.0001] Defense
# 計算
	scoreboard players add $Defense.Copy Temporary 100
	scoreboard players operation $Defense.Copy Temporary /= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary *= $Defense.Copy Temporary
	scoreboard players operation $Health.Max.Copy.Copy Temporary = $Health.Max.Copy Temporary
	scoreboard players operation $Health.Max.Copy Temporary -= @s Attack
	scoreboard players operation $Health.Max.Copy Temporary *= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary /= $Health.Max.Copy.Copy Temporary
# 体力を減らす
	scoreboard players operation @a[tag=This,distance=..0.001] Health *= $Health.Max.Copy Temporary
	scoreboard players operation @a[tag=This,distance=..0.001] Health /= $100 Constant
# 回復
	effect give @a[tag=This,distance=..0.001] minecraft:instant_health 1 250 true
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Max.Copy
	scoreboard players reset $Health.Max.Copy.Copy
	scoreboard players reset $Defense.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Max.Copy
 #declare score_holder $Health.Max.Copy.Copy
 #declare score_holder $Defense.Copy
