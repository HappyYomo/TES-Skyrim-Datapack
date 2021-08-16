#> player:inventory_changed/armor/chest/without
#
# 胸当を装備していなかったら
#
# @within function player:inventory_changed/

# 体力を減らす
	execute if entity @s[scores={Health.Chest=..2147483647}] run scoreboard players operation @s Health -= @s Health.Chest
	execute if entity @s[scores={Health.Chest=..2147483647}] run scoreboard players reset @s Health.Chest
