#> player:player_hurt_entity/filters/7
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/8

execute if entity @a[tag=This,advancements={player:player_hurt_entity={7-0=true}}] if entity @s[tag=FindFlag7.0] run function player:player_hurt_entity/filters/6
execute if entity @a[tag=This,advancements={player:player_hurt_entity={7-1=true}}] if entity @s[tag=FindFlag7.1] run function player:player_hurt_entity/filters/6
