#> player:inventory_changed/armor/feet/health/add
#
# 最大体力増加
#
# @within function player:inventory_changed/armor/feet/

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Feet
# 最大体力を増やす
	scoreboard players operation @s Health.Max += $Amount Temporary
	scoreboard players operation @s Health.Feet = $Amount Temporary
