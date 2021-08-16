#> player:inventory_changed/armor/feet/without
#
# 足を装備していなかったら
#
# @within function player:inventory_changed/

# 体力を減らす
	execute if entity @s[scores={Health.Feet=..2147483647}] run scoreboard players operation @s Health -= @s Health.Feet
	execute if entity @s[scores={Health.Feet=..2147483647}] run scoreboard players reset @s Health.Feet
