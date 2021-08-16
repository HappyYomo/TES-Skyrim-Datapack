#> player:inventory_changed/armor/head/health
#
# 体力増加
#
# @within function player:inventory_changed/armor/head/

# 最大体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= $Amount Temporary
# 追加体力を増やす
	scoreboard players operation @s Health.Max += $Amount Temporary
	scoreboard players operation @s Health.Head = $Amount Temporary
