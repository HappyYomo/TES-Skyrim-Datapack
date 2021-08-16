#> player:entity_hurt_player/filters/2
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/3

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={2-0=true}}] if entity @s[tag=FindFlag2.0] run function player:entity_hurt_player/filters/1
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={2-1=true}}] if entity @s[tag=FindFlag2.1] run function player:entity_hurt_player/filters/1
