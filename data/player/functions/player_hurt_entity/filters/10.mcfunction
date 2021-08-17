#> player:player_hurt_entity/filters/10
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/11

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={10-0=true}}] if entity @s[tag=FindFlag10.0] run function player:player_hurt_entity/filters/9
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={10-1=true}}] if entity @s[tag=FindFlag10.1] run function player:player_hurt_entity/filters/9
