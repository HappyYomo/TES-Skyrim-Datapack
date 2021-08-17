#> player:player_hurt_entity/filters/8
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/9

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={8-0=true}}] if entity @s[tag=FindFlag8.0] run function player:player_hurt_entity/filters/7
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={8-1=true}}] if entity @s[tag=FindFlag8.1] run function player:player_hurt_entity/filters/7
