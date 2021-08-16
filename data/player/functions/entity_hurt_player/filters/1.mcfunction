#> player:entity_hurt_player/filters/1
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/2

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={1-0=true}}] if entity @s[tag=FindFlag1.0] run function player:entity_hurt_player/filters/0
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={1-1=true}}] if entity @s[tag=FindFlag1.1] run function player:entity_hurt_player/filters/0
