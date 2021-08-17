#> player:recover.health
#
# 体力を回復
#
# @within function player:tick

# 最大体力をコピー
	scoreboard players operation $Health.Max.Copy Temporary = @s Health.Max
# 回復量
	scoreboard players operation $Health.Max.Copy Temporary *= @s Health.Recov.Per
	scoreboard players operation $Health.Max.Copy Temporary /= $100 Constant
# 回復
	scoreboard players operation @s Health += $Health.Max.Copy Temporary
# 過剰に回復したら
	execute if score @s Health > @s Health.Max run scoreboard players operation @s Health = @s Health.Max
# タイマーをリセット
	scoreboard players reset @s Health.Recov.Tmr
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Max.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Max.Copy
