#> player:weapons/offhand/majika/remove
#
# 最大マジカ減少
#
# @within function player:weapons/offhand/
# @within function player:weapons/offhand/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Offhand
# 追加マジカをリセット
	scoreboard players reset @s Majika.Offhand
