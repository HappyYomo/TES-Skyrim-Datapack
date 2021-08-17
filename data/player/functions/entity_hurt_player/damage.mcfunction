#> player:entity_hurt_player/damage
#
# ダメージを与える
#
# @within function player:entity_hurt_player/filters/0

# 最大体力と防御力をコピー
	scoreboard players operation $Health.Max.Copy Temporary = @a[tag=This,distance=..0.0001] Health.Max
	scoreboard players operation $Defense.Copy Temporary = @a[tag=This,distance=..0.0001] Defense
# 体力をコピー
	execute as @a[tag=This,distance=..0.001] run scoreboard players operation $Health.Copy Temporary = @s Health
# 計算
	scoreboard players add $Defense.Copy Temporary 100
	scoreboard players operation $Defense.Copy Temporary /= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary *= $Defense.Copy Temporary
	scoreboard players operation $Health.Max.Copy1 Temporary = $Health.Max.Copy Temporary
	scoreboard players operation $Health.Max.Copy Temporary -= @s Attack
	scoreboard players operation $Health.Max.Copy Temporary *= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary /= $Health.Max.Copy1 Temporary
# 体力を減らす
	scoreboard players operation @a[tag=This,distance=..0.001] Health *= $Health.Max.Copy Temporary
	scoreboard players operation @a[tag=This,distance=..0.001] Health /= $100 Constant
# ダメージを伝える
	execute as @a[tag=This,distance=..0.001] run function player:entity_hurt_player/display.damage
# 回復
	effect give @a[tag=This,distance=..0.001] minecraft:instant_health 1 250 true
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Max.Copy
	scoreboard players reset $Health.Max.Copy1
	scoreboard players reset $Defense.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Max.Copy
 #declare score_holder $Health.Max.Copy1
 #declare score_holder $Defense.Copy
# 
#> ScoreHolder
#@private
#@within function player:entity_hurt_player/display.damage
 #declare score_holder $Health.Copy
