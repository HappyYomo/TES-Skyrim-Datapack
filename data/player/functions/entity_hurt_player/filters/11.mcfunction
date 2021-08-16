#> player:entity_hurt_player/filters/11
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/12

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={11-0=true}}] if entity @s[tag=FindFlag11.0] run function player:entity_hurt_player/filters/10
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={11-1=true}}] if entity @s[tag=FindFlag11.1] run function player:entity_hurt_player/filters/10
