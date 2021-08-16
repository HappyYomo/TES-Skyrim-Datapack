#> player:tick
#
# プレイヤーで常時実行
#
# @within function command:tick

# 体力を回復
	execute if score @s Health < @s Health.Max run scoreboard players add @s Health.Recov.Tmr 1
	execute if score @s Health.Recov.Tmr >= @s Health.Recov.Dur run function player:recover.health
# 魔力を回復
	execute if score @s Magica < @s Magica.Max run scoreboard players add @s Magica.Recov.Tmr 1
	execute if score @s Magica.Recov.Tmr >= @s Magica.Recov.Dur run function player:recover.magica
# ウエポンチャージを減らす
	execute if entity @s[scores={Weapon.Charge=1..}] run scoreboard players remove @s Weapon.Charge 1
