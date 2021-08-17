#> player:entity_hurt_player/filters/10
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/11

execute if entity @a[tag=This,advancements={player:entity_hurt_player={10-0=true}}] if entity @s[tag=FindFlag10.0] run function player:entity_hurt_player/filters/9
execute if entity @a[tag=This,advancements={player:entity_hurt_player={10-1=true}}] if entity @s[tag=FindFlag10.1] run function player:entity_hurt_player/filters/9
