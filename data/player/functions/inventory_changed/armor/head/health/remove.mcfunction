#> player:inventory_changed/armor/head/health/remove
#
# 最大体力減少
#
# @within function player:inventory_changed/armor/head/
# @within function player:inventory_changed/armor/head/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Head
# 追加体力をリセット
	scoreboard players reset @s Health.Head
