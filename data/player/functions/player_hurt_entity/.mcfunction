#> player:player_hurt_entity/
#
# Player→Entityのダメージ
#
# @within advancement player:player_hurt_entity

# Tagを付ける
	tag @s add This
# 攻撃先を特定
	execute if entity @s[scores={Weapon.Charge=0}] as @e[type=#entity:living,type=!player,nbt=!{HurtTime:0s},distance=..150] run function player:player_hurt_entity/filters/15
# Tagを外す
	tag @s remove This
# 進捗を剥奪
	advancement revoke @s only player:player_hurt_entity
