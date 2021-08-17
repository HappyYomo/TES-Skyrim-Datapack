#> player:entity_hurt_player/filters/13
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/filters/14

execute if entity @a[tag=This,advancements={player:entity_hurt_player={13-0=true}}] if entity @s[tag=FindFlag13.0] run function player:entity_hurt_player/filters/12
execute if entity @a[tag=This,advancements={player:entity_hurt_player={13-1=true}}] if entity @s[tag=FindFlag13.1] run function player:entity_hurt_player/filters/12
