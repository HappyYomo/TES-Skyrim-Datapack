#> player:entity_hurt_player/filters/15
#
# 攻撃してきたEntityを特定
#
# @within function player:entity_hurt_player/

execute if entity @a[tag=This,advancements={player:entity_hurt_player={15-0=true}}] if entity @s[tag=FindFlag15.0] run function player:entity_hurt_player/filters/14
execute if entity @a[tag=This,advancements={player:entity_hurt_player={15-1=true}}] if entity @s[tag=FindFlag15.1] run function player:entity_hurt_player/filters/14
