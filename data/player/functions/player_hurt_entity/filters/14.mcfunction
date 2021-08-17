#> player:player_hurt_entity/filters/14
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/15

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={14-0=true}}] if entity @s[tag=FindFlag14.0] run function player:player_hurt_entity/filters/13
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={14-1=true}}] if entity @s[tag=FindFlag14.1] run function player:player_hurt_entity/filters/13
