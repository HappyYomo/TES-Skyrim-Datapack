#> player:inventory_changed/armor/feet/defense/remove
#
# 防御力減少
#
# @within function player:inventory_changed/armor/feet/
# @within function player:inventory_changed/armor/feet/without

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Feet
# 追加防御力をリセット
	scoreboard players reset @s Defense.Feet
