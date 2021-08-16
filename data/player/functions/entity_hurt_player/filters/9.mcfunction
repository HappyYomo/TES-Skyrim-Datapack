#> player:entity_hurt_player/filters/9
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/10

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={9-0=true}}] if entity @s[tag=FindFlag9.0] run function player:entity_hurt_player/filters/8
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={9-1=true}}] if entity @s[tag=FindFlag9.1] run function player:entity_hurt_player/filters/8
