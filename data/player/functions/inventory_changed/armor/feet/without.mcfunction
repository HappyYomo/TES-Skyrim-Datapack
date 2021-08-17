#> player:inventory_changed/armor/feet/without
#
# 足を装備していなかったら
#
# @within function player:inventory_changed/

# 減少
	execute if entity @s[scores={Health.Feet=..2147483647}] run function player:inventory_changed/armor/feet/health/remove
	execute if entity @s[scores={Majika.Feet=..2147483647}] run function player:inventory_changed/armor/feet/majika/remove
	execute if entity @s[scores={Defense.Feet=..2147483647}] run function player:inventory_changed/armor/feet/defense/remove
# Tagを外す
	tag @s remove Wearing.Feet
