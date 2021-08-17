#> player:weapons/offhand/health/remove
#
# 最大体力減少
#
# @within function player:weapons/offhand/
# @within function player:weapons/offhand/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Offhand
# 追加体力をリセット
	scoreboard players reset @s Health.Offhand
