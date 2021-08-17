#> player:inventory_changed/armor/legs/majika/remove
#
# 最大マジカ減少
#
# @within function player:inventory_changed/armor/legs/
# @within function player:inventory_changed/armor/legs/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Legs
# 追加マジカをリセット
	scoreboard players reset @s Majika.Legs
