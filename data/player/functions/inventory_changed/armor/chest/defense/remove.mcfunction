#> player:inventory_changed/armor/chest/defense/remove
#
# 防御力減少
#
# @within function player:inventory_changed/armor/chest/
# @within function player:inventory_changed/armor/chest/without

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Chest
# 追加防御力をリセット
	scoreboard players reset @s Defense.Chest
