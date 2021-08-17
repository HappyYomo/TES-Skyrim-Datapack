#> player:tick
#
# プレイヤーで常時実行
#
# @within function command:tick

# プレイヤーを初期化
	execute if entity @s[scores={PlayTime=1}] run function player:init
# 体力を回復
	execute if score @s Health < @s Health.Max run scoreboard players add @s Health.Recov.Tmr 1
	execute if score @s Health.Recov.Tmr >= @s Health.Recov.Dur run function player:recover.health
# ウエポンチャージ
	execute if entity @s[scores={Weapon.Charge=1..}] run scoreboard players remove @s Weapon.Charge 1
