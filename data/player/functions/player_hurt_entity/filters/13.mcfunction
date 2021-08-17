#> player:player_hurt_entity/filters/13
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/14

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={13-0=true}}] if entity @s[tag=FindFlag13.0] run function player:player_hurt_entity/filters/12
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={13-1=true}}] if entity @s[tag=FindFlag13.1] run function player:player_hurt_entity/filters/12
