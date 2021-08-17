#> player:entity_hurt_player/filters/8
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/9

execute if entity @a[tag=This,advancements={player:entity_hurt_player={8-0=true}}] if entity @s[tag=FindFlag8.0] run function player:entity_hurt_player/filters/7
execute if entity @a[tag=This,advancements={player:entity_hurt_player={8-1=true}}] if entity @s[tag=FindFlag8.1] run function player:entity_hurt_player/filters/7
