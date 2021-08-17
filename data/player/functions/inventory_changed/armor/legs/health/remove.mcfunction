#> player:inventory_changed/armor/legs/health/remove
#
# 最大体力減少
#
# @within function player:inventory_changed/armor/legs/
# @within function player:inventory_changed/armor/legs/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Legs
# 追加体力をリセット
	scoreboard players reset @s Health.Legs
