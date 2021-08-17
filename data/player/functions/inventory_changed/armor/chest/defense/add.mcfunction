#> player:inventory_changed/armor/chest/defense/add
#
# 防御力増加
#
# @within function player:inventory_changed/armor/chest/

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Chest
# 追加防御力を増やす
	scoreboard players operation @s Defense += $Amount Temporary
	scoreboard players operation @s Defense.Chest = $Amount Temporary
