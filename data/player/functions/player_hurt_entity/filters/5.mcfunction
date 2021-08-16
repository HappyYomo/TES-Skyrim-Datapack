#> player:player_hurt_entity/filters/5
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/filters/6

execute if entity @a[tag=This,advancements={player:player_hurt_entity={5-0=true}}] if entity @s[tag=FindFlag5.0] run function player:player_hurt_entity/filters/4
execute if entity @a[tag=This,advancements={player:player_hurt_entity={5-1=true}}] if entity @s[tag=FindFlag5.1] run function player:player_hurt_entity/filters/4
