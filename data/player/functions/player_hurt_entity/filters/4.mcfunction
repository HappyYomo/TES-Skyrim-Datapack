#> player:player_hurt_entity/filters/4
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/5

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={4-0=true}}] if entity @s[tag=FindFlag4.0] run function player:player_hurt_entity/filters/3
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={4-1=true}}] if entity @s[tag=FindFlag4.1] run function player:player_hurt_entity/filters/3
