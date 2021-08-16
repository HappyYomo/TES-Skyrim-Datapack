#> player:player_hurt_entity/filters/15
#
# 攻撃先を特定
#
# @within function player:player_hurt_entity/

execute if entity @a[tag=This,advancements={player:player_hurt_entity={15-0=true}}] if entity @s[tag=FindFlag15.0] run function player:player_hurt_entity/filters/14
execute if entity @a[tag=This,advancements={player:player_hurt_entity={15-1=true}}] if entity @s[tag=FindFlag15.1] run function player:player_hurt_entity/filters/14
