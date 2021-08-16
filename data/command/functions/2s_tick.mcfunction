#> command:2s_tick
#
# 2秒に一回実行
#
# @within function command:load
# @within function player:recover.health
# @within function player:recover.magica
# @private

# プレイヤーのステータス
	execute as @a run title @s actionbar [{"text":"Health: ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"Health"},"color":"red","bold":true},"/",{"score":{"name":"@s","objective":"Health.Max"},"color":"red","bold":true},{"text":"   Defense: ","color":"dark_green"},{"score":{"name":"@s","objective":"Defense"},"color":"green","bold":true},{"text":"   Majicka: ","color":"blue"},{"score":{"name":"@s","objective":"Magica"},"color":"aqua","bold":true},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"Magica.Max"},"color":"aqua","bold":true}]
# 次の実行を予約
	schedule clear command:2s_tick
	schedule function command:2s_tick 2s
