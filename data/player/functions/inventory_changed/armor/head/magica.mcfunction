#> player:inventory_changed/armor/head/magica
#
# マジカを増やす
#
# @within function player:inventory_changed/armor/head/

# 現在のマジカから追加マジカを減らす
	scoreboard players operation @s Magica.Max -= @s Magica.Head
# 現在のマジカを追加マジカで上書きする
	scoreboard players operation @s Magica.Max += $Amount Temporary
	scoreboard players operation @s Magica.Head = $Amount Temporary
