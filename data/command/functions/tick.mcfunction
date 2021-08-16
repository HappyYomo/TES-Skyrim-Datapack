#> command:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# Entityの初期化
	execute as @e[type=#entity:living,type=!minecraft:player,tag=!Entity] run function entity:init
