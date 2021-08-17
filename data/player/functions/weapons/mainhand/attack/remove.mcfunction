#> player:weapons/mainhand/attack/remove
#
# 攻撃力減少
#
# @within function player:weapons/mainhand/
# @within function player:weapons/mainhand/without

# 攻撃力から追加攻撃力を減らす
	scoreboard players operation @s Attack -= @s Attack.Mainhand
# 追加攻撃力をリセット
	scoreboard players reset @s Attack.Mainhand
