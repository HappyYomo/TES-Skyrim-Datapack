#> player:weapons/mainhand/health/remove
#
# 最大体力減少
#
# @within function player:weapons/mainhand/
# @within function player:weapons/mainhand/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Mainhand
# 追加体力をリセット
	scoreboard players reset @s Health.Mainhand
