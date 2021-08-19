#> crafting:tick
#
# 作業台で常時実行
#
# @within function command:tick

# 設置
	execute if entity @s[tag=New.Marker] run function crafting:set
# 破壊
	execute unless block ~ ~ ~ minecraft:dropper[facing=up] run function crafting:break
# 
#> ScoreHolder
#@private
 #declare score_holder $Crafted
