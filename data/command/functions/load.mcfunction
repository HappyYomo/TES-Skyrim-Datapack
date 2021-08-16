#> command:load
#
# リロード時実行
#
# @within tag/function minecraft:load

# 初期化
	execute unless data storage tesv_whole: Once run function command:load.once
# 2秒に一回実行されるfunctionを予約
	schedule clear command:2s_tick
	schedule function command:2s_tick 1t
