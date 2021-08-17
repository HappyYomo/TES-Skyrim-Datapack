#> player:inventory_changed/armor/head/majika/add
#
# 最大マジカ増加
#
# @within function player:inventory_changed/armor/head/

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Head
# 最大マジカを増やす
	scoreboard players operation @s Majika.Max += $Amount Temporary
	scoreboard players operation @s Majika.Head = $Amount Temporary
