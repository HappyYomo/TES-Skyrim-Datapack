#> command:4.tick
#
# 2秒に一回実行
#
# @within function command:load
# @private

# プレイヤーのステータス
	execute as @a run title @s actionbar [{"text":"Health: ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"Health"},"color":"red","bold":true},"/",{"score":{"name":"@s","objective":"Health.Max"},"color":"red","bold":true},{"text":"   Defense: ","color":"dark_green"},{"score":{"name":"@s","objective":"Defense"},"color":"green","bold":true},{"text":"   Majicka: ","color":"blue"},{"score":{"name":"@s","objective":"Majika"},"color":"aqua","bold":true},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"Majika.Max"},"color":"aqua","bold":true}]
# 次の実行を予約
	schedule clear command:4.tick
	schedule function command:4.tick 4t 
