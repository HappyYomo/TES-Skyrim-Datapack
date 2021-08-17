#> player:entity_hurt_player/filters/4
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/5

	execute if entity @a[tag=This,advancements={player:entity_hurt_player={4-0=true}}] if entity @s[tag=FindFlag4.0] run function player:entity_hurt_player/filters/3
	execute if entity @a[tag=This,advancements={player:entity_hurt_player={4-1=true}}] if entity @s[tag=FindFlag4.1] run function player:entity_hurt_player/filters/3
