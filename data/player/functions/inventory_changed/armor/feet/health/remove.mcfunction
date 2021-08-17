#> player:inventory_changed/armor/feet/health/remove
#
# 最大体力減少
#
# @within function player:inventory_changed/armor/feet/
# @within function player:inventory_changed/armor/feet/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Feet
# 追加体力をリセット
	scoreboard players reset @s Health.Feet
