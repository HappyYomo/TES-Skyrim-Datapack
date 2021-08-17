#> player:player_hurt_entity/filters/11
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/12

	execute if entity @a[tag=This,advancements={player:player_hurt_entity={11-0=true}}] if entity @s[tag=FindFlag11.0] run function player:player_hurt_entity/filters/10
	execute if entity @a[tag=This,advancements={player:player_hurt_entity={11-1=true}}] if entity @s[tag=FindFlag11.1] run function player:player_hurt_entity/filters/10
	
