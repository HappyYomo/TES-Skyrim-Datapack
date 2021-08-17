#> player:player_hurt_entity/filters/2
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/3

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={2-0=true}}] if entity @s[tag=FindFlag2.0] run function player:player_hurt_entity/filters/1
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={2-1=true}}] if entity @s[tag=FindFlag2.1] run function player:player_hurt_entity/filters/1
