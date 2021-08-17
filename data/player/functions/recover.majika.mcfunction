#> player:recover.majika
#
# マジカを回復
#
# @within function player:tick

# 最大マジカをコピー
	scoreboard players operation $Majika.Max.Copy Temporary = @s Majika.Max
# 回復量
	scoreboard players operation $Majika.Max.Copy Temporary *= @s Majika.Recov.Per
	scoreboard players operation $Majika.Max.Copy Temporary /= $100 Constant
# 回復
	scoreboard players operation @s Majika += $Majika.Max.Copy Temporary
# 過剰に回復したら
	execute if score @s Majika > @s Majika.Max run scoreboard players operation @s Majika = @s Majika.Max
# タイマーをリセット
	scoreboard players reset @s Majika.Recov.Tmr
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Majika.Max.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Majika.Max.Copy
