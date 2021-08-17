#> player:weapons/offhand/attack/remove
#
# 攻撃力減少
#
# @within function player:weapons/offhand/
# @within function player:weapons/offhand/without

# 攻撃力から追加攻撃力を減らす
	scoreboard players operation @s Attack -= @s Attack.Offhand
# 追加攻撃力をリセット
	scoreboard players reset @s Attack.Offhand
