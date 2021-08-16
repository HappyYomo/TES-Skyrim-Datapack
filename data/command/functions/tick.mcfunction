#> command:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# Entityを初期化
	execute as @e[type=#entity:living,type=!minecraft:player,tag=!Entity] run function entity:init
# プレイヤーを初期化
	execute as @a[scores={PlayTime=1}] run function player:init
# プレイヤーで常時実行
	execute as @a at @s run function player:tick
# Entityのドロップアイテムを消す
	execute as @e[type=minecraft:chest_minecart,tag=Belonging] at @s unless entity @e[distance=0.001..15] run scoreboard players add @s Death 1
	execute as @e[type=minecraft:chest_minecart,tag=Belonging] at @s if score @s Death matches 600.. run tp ~ -3000 ~
# 透明
	execute as @e[tag=Invisible] at @s run effect give @s invisibility 1 1 true
