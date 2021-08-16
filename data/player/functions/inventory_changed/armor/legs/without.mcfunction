#> player:inventory_changed/armor/legs/without
#
# 脚を装備していなかったら
#
# @within function player:inventory_changed/

# 体力を減らす
	execute if entity @s[scores={Health.Legs=..2147483647}] run scoreboard players operation @s Health -= @s Health.Legs
	execute if entity @s[scores={Health.Legs=..2147483647}] run scoreboard players reset @s Health.Legs
