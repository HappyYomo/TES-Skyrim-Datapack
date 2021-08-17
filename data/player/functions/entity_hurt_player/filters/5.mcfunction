#> player:entity_hurt_player/filters/5
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/6

execute if entity @a[tag=This,advancements={player:entity_hurt_player={5-0=true}}] if entity @s[tag=FindFlag5.0] run function player:entity_hurt_player/filters/4
execute if entity @a[tag=This,advancements={player:entity_hurt_player={5-1=true}}] if entity @s[tag=FindFlag5.1] run function player:entity_hurt_player/filters/4
