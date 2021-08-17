#> player:inventory_changed/armor/head/defense/remove
#
# 防御力減少
#
# @within function player:inventory_changed/armor/head/
# @within function player:inventory_changed/armor/head/without

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Head
# 追加防御力をリセット
	scoreboard players reset @s Defense.Head
