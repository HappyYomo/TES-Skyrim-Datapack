#> player:entity_hurt_player/filters/6
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/7

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={6-0=true}}] if entity @s[tag=FindFlag6.0] run function player:entity_hurt_player/filters/5
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={6-1=true}}] if entity @s[tag=FindFlag6.1] run function player:entity_hurt_player/filters/5
