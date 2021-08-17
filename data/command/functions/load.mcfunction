#> command:load
#
# リロード時実行
#
# @within tag/function minecraft:load

# 初期化
	execute unless data storage tesv_whole: Once run function command:load.once
# 実行を予約
	schedule clear command:4.tick
	schedule function command:4.tick 1t
