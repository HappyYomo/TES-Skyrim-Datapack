#> player:inventory_changed/armor/feet/magica
#
# マジカを増やす
#
# @within function player:inventory_changed/armor/feet/

# 現在のマジカから追加マジカを減らす
	scoreboard players operation @s Magica.Max -= @s Magica.Feet
# 現在のマジカを追加マジカで上書きする
	scoreboard players operation @s Magica.Max += $Amount Temporary
	scoreboard players operation @s Magica.Feet = $Amount Temporary
