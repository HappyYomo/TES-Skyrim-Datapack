#> player:weapons/offhand/majika/add
#
# 最大マジカ増加
#
# @within function player:weapons/offhand/

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Offhand
# 最大マジカを増やす
	scoreboard players operation @s Majika.Max += $Amount Temporary
	scoreboard players operation @s Majika.Offhand = $Amount Temporary
