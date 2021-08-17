#> player:weapons/offhand/without
#
# オフハンドにアイテムを持っていなかったら
#
# @within function player:tick

# 減少
	execute if entity @s[scores={Health.Offhand=..2147483647}] run function player:weapons/offhand/health/remove
	execute if entity @s[scores={Majika.Offhand=..2147483647}] run function player:weapons/offhand/majika/remove
	execute if entity @s[scores={Attack.Offhand=..2147483647}] run function player:weapons/offhand/attack/remove
# Tagを外す
	tag @s remove Having.Offhand
