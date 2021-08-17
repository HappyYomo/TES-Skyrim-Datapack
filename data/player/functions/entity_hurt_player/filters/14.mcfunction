#> player:entity_hurt_player/filters/14
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/15

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={14-0=true}}] if entity @s[tag=FindFlag14.0] run function player:entity_hurt_player/filters/13
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={14-1=true}}] if entity @s[tag=FindFlag14.1] run function player:entity_hurt_player/filters/13
