#> player:inventory_changed/armor/head/without
#
# 頭を装備していなかったら
#
# @within function player:inventory_changed/

# 体力を減らす
	execute if entity @s[scores={Health.Head=..2147483647}] run scoreboard players operation @s Health -= @s Health.Head
	execute if entity @s[scores={Health.Head=..2147483647}] run scoreboard players reset @s Health.Head
