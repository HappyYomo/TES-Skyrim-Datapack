#> player:player_hurt_entity/filters/3
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/4

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={3-0=true}}] if entity @s[tag=FindFlag3.0] run function player:player_hurt_entity/filters/2
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={3-1=true}}] if entity @s[tag=FindFlag3.1] run function player:player_hurt_entity/filters/2
