#> player:weapons/mainhand/majika/add
#
# 最大マジカ増加
#
# @within function player:weapons/mainhand/

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Mainhand
# 最大マジカを増やす
	scoreboard players operation @s Majika.Max += $Amount Temporary
	scoreboard players operation @s Majika.Mainhand = $Amount Temporary
