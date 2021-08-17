#> player:entity_hurt_player/filters/0
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/1

execute if entity @a[tag=This,advancements={player:entity_hurt_player={0-0=true}}] if entity @s[tag=FindFlag0.0] run function player:entity_hurt_player/damage
execute if entity @a[tag=This,advancements={player:entity_hurt_player={0-1=true}}] if entity @s[tag=FindFlag0.1] run function player:entity_hurt_player/damage
