#> command:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# Entityの初期化
	execute as @e[type=#entity:living,type=!minecraft:player,tag=!Entity] run function entity:init
# プレイヤーで常時実行
	execute as @a at @s run function player:tick
# デスボックスを消す
	execute as @e[type=minecraft:chest_minecart,tag=DeathBox] at @s unless entity @e[type=#entity:living,distance=..15] run scoreboard players add @s Death 1
	execute as @e[type=minecraft:chest_minecart,tag=DeathBox,scores={Death=600..}] at @s run tp @s ~ -3000 ~
