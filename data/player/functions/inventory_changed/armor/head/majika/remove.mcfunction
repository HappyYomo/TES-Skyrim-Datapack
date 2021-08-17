#> player:inventory_changed/armor/head/majika/remove
#
# 最大マジカ減少
#
# @within function player:inventory_changed/armor/head/
# @within function player:inventory_changed/armor/head/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Head
# 追加マジカをリセット
	scoreboard players reset @s Majika.Head
