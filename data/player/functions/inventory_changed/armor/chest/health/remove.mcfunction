#> player:inventory_changed/armor/chest/health/remove
#
# 最大体力減少
#
# @within function player:inventory_changed/armor/chest/
# @within function player:inventory_changed/armor/chest/without

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Chest
# 追加体力をリセット
	scoreboard players reset @s Health.Chest
