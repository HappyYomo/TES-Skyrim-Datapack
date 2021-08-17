#> player:player_hurt_entity/display.damage
#
# ダメージを伝える
#
# @within function player:player_hurt_entity/damage

# 計算
	scoreboard players operation $Health.Copy Temporary -= @s Health
# 伝える
	tellraw @a[tag=This,distance=..0.001] [{"text":">> Damage: "},{"score":{"name":"$Health.Copy","objective":"Temporary"},"color":"red"}]
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Copy
