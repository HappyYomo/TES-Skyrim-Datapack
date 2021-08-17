#> player:player_hurt_entity/filters/9
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/10

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={9-0=true}}] if entity @s[tag=FindFlag9.0] run function player:player_hurt_entity/filters/8
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={9-1=true}}] if entity @s[tag=FindFlag9.1] run function player:player_hurt_entity/filters/8
