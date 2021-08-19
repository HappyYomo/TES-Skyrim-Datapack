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
# マジカを回復
	execute if score @s Majika < @s Majika.Max run scoreboard players add @s Majika.Recov.Tmr 1
	execute if score @s Majika.Recov.Tmr >= @s Majika.Recov.Dur run function player:recover.majika
# ステータス増加
	# アイテムを持っていたら
		execute if data entity @s SelectedItem.tag.Weapon run function player:weapons/mainhand/
		execute if data entity @s Inventory[{Slot:-106b}].tag.Weapon run function player:weapons/offhand/
	# アイテムを持っていなかったら
		execute if entity @s[tag=Having.Mainhand] unless data entity @s SelectedItem.tag.Weapon run function player:weapons/mainhand/without
		execute if entity @s[tag=Having.Offhand] unless data entity @s Inventory[{Slot:-106b}].tag.Weapon run function player:weapons/offhand/without
# ウエポンチャージ
	execute if entity @s[scores={Weapon.Charge=1..}] run scoreboard players remove @s Weapon.Charge 1
# 作業台を渡す
	execute if data entity @s Inventory[{id:"minecraft:jigsaw"}] run function crafting:give
# エンダーマイトのスポーンエッグを使ったら
		execute if entity @s[scores={Used.EndermiteSE=1..}] run scoreboard players reset @s Used.EndermiteSE
