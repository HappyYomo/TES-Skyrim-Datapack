#> player:inventory_changed/armor/chest/without
#
# 胸当を装備していなかったら
#
# @within function player:inventory_changed/

# 減少
	execute if entity @s[scores={Health.Chest=..2147483647}] run function player:inventory_changed/armor/chest/health/remove
	execute if entity @s[scores={Majika.Chest=..2147483647}] run function player:inventory_changed/armor/chest/majika/remove
	execute if entity @s[scores={Defense.Chest=..2147483647}] run function player:inventory_changed/armor/chest/defense/remove
# Tagを外す
	tag @s remove Wearing.Chest
