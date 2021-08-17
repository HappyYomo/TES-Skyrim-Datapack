#> player:inventory_changed/armor/feet/majika/add
#
# 最大マジカ増加
#
# @within function player:inventory_changed/armor/feet/

# 最大マジカから追加マジカを減らす
	scoreboard players operation @s Majika.Max -= @s Majika.Feet
# 最大マジカを増やす
	scoreboard players operation @s Majika.Max += $Amount Temporary
	scoreboard players operation @s Majika.Feet = $Amount Temporary
