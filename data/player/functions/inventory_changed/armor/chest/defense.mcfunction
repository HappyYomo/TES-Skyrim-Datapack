#> player:inventory_changed/armor/chest/defense
#
# 防御力を増やす
#
# @within function player:inventory_changed/armor/chest/

# 現在の防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Chest
# 現在の防御力を追加防御力で上書きする
	scoreboard players operation @s Defense += $Amount Temporary
	scoreboard players operation @s Defense.Chest = $Amount Temporary
