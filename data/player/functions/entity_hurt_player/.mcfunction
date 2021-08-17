#> player:entity_hurt_player/
#
# Entity→Playerのダメージ
#
# @within advancement player:entity_hurt_player

# Tagを付ける
	tag @s add This
# 攻撃してきたEntityを特定
	execute as @e[type=#entity:living,type=!player,distance=..150] run function player:entity_hurt_player/filters/15
# Tagを外す
	tag @s remove This
# 進捗を剥奪
	advancement revoke @s only player:entity_hurt_player
