#> player:player_hurt_entity/filters/6
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/7

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={6-0=true}}] if entity @s[tag=FindFlag6.0] run function player:player_hurt_entity/filters/5
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={6-1=true}}] if entity @s[tag=FindFlag6.1] run function player:player_hurt_entity/filters/5
