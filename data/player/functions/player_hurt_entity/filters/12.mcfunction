#> player:player_hurt_entity/filters/12
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/13

execute if entity @a[tag=This,advancements={player:player_hurt_entity={12-0=true}}] if entity @s[tag=FindFlag12.0] run function player:player_hurt_entity/filters/11
execute if entity @a[tag=This,advancements={player:player_hurt_entity={12-1=true}}] if entity @s[tag=FindFlag12.1] run function player:player_hurt_entity/filters/11
