#> command:random/init
#
# 疑似乱数を生成するための初期化
#
# @within function command:load.once

# マーカーを召喚
	summon minecraft:marker 512 0 512 {Tags:["Random"]}
# 現在値設定
	execute positioned 512 0 512 store result score $Current Global run data get entity @e[type=minecraft:marker,tag=Random,distance=..0.001,limit=1] UUID[0]
	scoreboard players operation $Current Global %= $2^16 Constant
	scoreboard players add $Current Global 1
# キャリー設定
	execute store result score $Carry Global run data get entity @e[type=minecraft:marker,tag=Random,limit=1] UUID[1]
	scoreboard players operation $Carry Global %= $2^16 Constant
	scoreboard players add $Carry Global 1
# マーカーを殺す
	execute positioned 512 0 512 run kill @e[type=minecraft:marker,tag=Random,distance=..0.001]
# 
#> Tag
#@private
 #declare tag Random
