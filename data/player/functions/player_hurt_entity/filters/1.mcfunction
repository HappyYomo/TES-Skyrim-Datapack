#> player:player_hurt_entity/filters/1
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/2

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={1-0=true}}] if entity @s[tag=FindFlag1.0] run function player:player_hurt_entity/filters/0
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={1-1=true}}] if entity @s[tag=FindFlag1.1] run function player:player_hurt_entity/filters/0
