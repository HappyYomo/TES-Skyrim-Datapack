#> player:inventory_changed/armor/legs/without
#
# 脚を装備していなかったら
#
# @within function player:inventory_changed/

# 減少
	execute if entity @s[scores={Health.Legs=..2147483647}] run function player:inventory_changed/armor/legs/health/remove
	execute if entity @s[scores={Majika.Legs=..2147483647}] run function player:inventory_changed/armor/legs/majika/remove
	execute if entity @s[scores={Defense.Legs=..2147483647}] run function player:inventory_changed/armor/legs/defense/remove
# Tagを外す
	tag @s remove Wearing.Legs
