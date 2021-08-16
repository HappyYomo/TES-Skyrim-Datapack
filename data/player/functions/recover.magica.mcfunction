#> player:recover.magica
#
# 魔力を回復
#
# @within function player:tick

# 最大マジカをコピー
	scoreboard players operation $Magica.Max.Copy Temporary = @s Magica.Max
# 回復量を計算
	scoreboard players operation $Magica.Max.Copy Temporary *= @s Magica.Recov.Per
	scoreboard players operation $Magica.Max.Copy Temporary /= $100 Constant
# マジカを回復
	scoreboard players operation @s Magica += $Magica.Max.Copy Temporary
# 過剰に回復したら、最大マジカと現在マジカを同じにする
	execute if score @s Magica > @s Magica.Max run scoreboard players operation @s Magica = @s Magica.Max
# マジカの表示を更新
	function command:2s_tick
# タイマーをリセット
	scoreboard players reset @s Magica.Recov.Tmr
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Magica.Max.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Magica.Max.Copy
