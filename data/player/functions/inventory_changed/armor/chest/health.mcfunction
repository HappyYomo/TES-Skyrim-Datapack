#> player:inventory_changed/armor/chest/health
#
# 体力を増やす
#
# @within function player:inventory_changed/armor/chest/

# 現在の体力から追加体力を減らす
	scoreboard players operation @s Health.Max -= @s Health.Chest
# 現在の体力を追加体力で上書きする
	scoreboard players operation @s Health.Max += $Amount Temporary
	scoreboard players operation @s Health.Chest = $Amount Temporary
