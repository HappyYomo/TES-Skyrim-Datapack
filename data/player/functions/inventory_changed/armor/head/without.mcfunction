#> player:inventory_changed/armor/head/without
#
# 頭を装備していなかったら
#
# @within function player:inventory_changed/

# 減少
	execute if entity @s[scores={Health.Head=..2147483647}] run function player:inventory_changed/armor/head/health/remove
	execute if entity @s[scores={Majika.Head=..2147483647}] run function player:inventory_changed/armor/head/majika/remove
	execute if entity @s[scores={Defense.Head=..2147483647}] run function player:inventory_changed/armor/head/defense/remove
# Tagを外す
	tag @s remove Wearing.Head
