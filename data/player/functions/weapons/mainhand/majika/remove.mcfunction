#> player:weapons/mainhand/majika/remove
#
# 最大マジカ減少
#
# @within function player:weapons/mainhand/
# @within function player:weapons/mainhand/without

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Mainhand
# 追加マジカをリセット
	scoreboard players reset @s Majika.Mainhand
