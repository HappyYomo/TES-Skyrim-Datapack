#> player:inventory_changed/armor/legs/defense
#
# 防御力増加
#
# @within function player:inventory_changed/armor/legs/

# 防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= $Amount Temporary
# 追加防御力を増やす
	scoreboard players operation @s Defense += $Amount Temporary
	scoreboard players operation @s Defense.Legs = $Amount Temporary
