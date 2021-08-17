#> player:player_hurt_entity/filters/0
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/1

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={0-0=true}}] if entity @s[tag=FindFlag0.0] run function player:player_hurt_entity/damage
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={0-1=true}}] if entity @s[tag=FindFlag0.1] run function player:player_hurt_entity/damage
