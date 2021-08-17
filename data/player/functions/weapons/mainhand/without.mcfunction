#> player:weapons/mainhand/without
#
# メインハンドにアイテムを持っていなかったら
#
# @within function player:tick

# 減少
	execute if entity @s[scores={Health.Mainhand=..2147483647}] run function player:weapons/mainhand/health/remove
	execute if entity @s[scores={Majika.Mainhand=..2147483647}] run function player:weapons/mainhand/majika/remove
	execute if entity @s[scores={Attack.Mainhand=..2147483647}] run function player:weapons/mainhand/attack/remove
# Tagを外す
	tag @s remove Having.Mainhand
