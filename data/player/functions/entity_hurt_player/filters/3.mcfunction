#> player:entity_hurt_player/filters/3
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/4

execute if entity @a[tag=This,advancements={player:entity_hurt_player={3-0=true}}] if entity @s[tag=FindFlag3.0] run function player:entity_hurt_player/filters/2
execute if entity @a[tag=This,advancements={player:entity_hurt_player={3-1=true}}] if entity @s[tag=FindFlag3.1] run function player:entity_hurt_player/filters/2
