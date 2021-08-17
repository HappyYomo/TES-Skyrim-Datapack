#> player:inventory_changed/armor/legs/defense/remove
#
# 防御力減少
#
# @within function player:inventory_changed/armor/legs/
# @within function player:inventory_changed/armor/legs/without

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Legs
# 追加防御力をリセット
	scoreboard players reset @s Defense.Legs
