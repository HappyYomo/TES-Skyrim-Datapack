#> player:entity_hurt_player/filters/12
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/13

execute if entity @a[tag=This,advancements={player:entity_hurt_player={12-0=true}}] if entity @s[tag=FindFlag12.0] run function player:entity_hurt_player/filters/11
execute if entity @a[tag=This,advancements={player:entity_hurt_player={12-1=true}}] if entity @s[tag=FindFlag12.1] run function player:entity_hurt_player/filters/11
