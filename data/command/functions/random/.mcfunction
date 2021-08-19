#> command:random/
#
# 疑似乱数を生成
#
# @within function entity:init/zombie/
## この疑似乱数の式はDiscordのコマンド鯖に赤石愛さんが張り付けたものを使わせていただいております。

# ax + c # $MWCMultiplier = 31,743
	scoreboard players operation $Current Global *= $31743 Constant
	scoreboard players operation $Current Global += $Carry Global
	scoreboard players operation $Carry Global = $Current Global
# x = (ax + c) % b # $MWCBase = 2^16 = 65536
	execute store result score $Random Temporary run scoreboard players operation $Current Global %= $2^16 Constant
# c = (ax + c) / b
	scoreboard players operation $Carry Global /= $2^16 Constant
# 最大値以下にする
	scoreboard players operation $Random Temporary %= $Random.Max Temporary
# 
#> ScoreHolder
 #declare score_holder $Current
 #declare score_holder $Carry
 #declare score_holder $Random
 #declare score_holder $Random.Max
