#> player:entity_hurt_player/filters/7
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/8

execute if entity @a[tag=This,advancements={player:entity_hurt_player={7-0=true}}] if entity @s[tag=FindFlag7.0] run function player:entity_hurt_player/filters/6
execute if entity @a[tag=This,advancements={player:entity_hurt_player={7-1=true}}] if entity @s[tag=FindFlag7.1] run function player:entity_hurt_player/filters/6
