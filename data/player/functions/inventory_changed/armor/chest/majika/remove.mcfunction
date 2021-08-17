#> player:inventory_changed/armor/chest/majika/remove
#
# 最大マジカ減少
#
# @within function player:inventory_changed/armor/chest/
# @within function player:inventory_changed/armor/chest/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Chest
# 追加マジカをリセット
	scoreboard players reset @s Majika.Chest
