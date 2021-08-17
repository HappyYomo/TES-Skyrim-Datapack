#> player:weapons/mainhand/attack/add
#
# 攻撃力増加
#
# @within function player:weapons/mainhand/

# 最大攻撃力から追加攻撃力を減らす
	scoreboard players operation @s Attack -= @s Attack.Mainhand
# 追加攻撃力を増やす
	scoreboard players operation @s Attack += $Amount Temporary
	scoreboard players operation @s Attack.Mainhand = $Amount Temporary
