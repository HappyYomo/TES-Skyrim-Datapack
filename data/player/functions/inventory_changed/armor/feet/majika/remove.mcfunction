#> player:inventory_changed/armor/feet/majika/remove
#
# 最大マジカ減少
#
# @within function player:inventory_changed/armor/feet/
# @within function player:inventory_changed/armor/feet/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Feet
# 追加マジカをリセット
	scoreboard players reset @s Majika.Feet
