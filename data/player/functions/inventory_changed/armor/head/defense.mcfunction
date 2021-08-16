#> player:inventory_changed/armor/head/defense
#
# 防御力を増やす
#
# @within function player:inventory_changed/armor/head/

# 現在の防御力から追加防御力を減らす
	scoreboard players operation @s Defense -= @s Defense.Head
# 現在の防御力を追加防御力で上書きする
	scoreboard players operation @s Defense += $Amount Temporary
	scoreboard players operation @s Defense.Head = $Amount Temporary
