#> player:inventory_changed/armor/head/health/add
#
# 最大体力増加
#
# @within function player:inventory_changed/armor/head/

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Head
# 最大体力を増やす
	scoreboard players operation @s Health.Max += $Amount Temporary
	scoreboard players operation @s Health.Head = $Amount Temporary
