#> command:load.once
#
# 
#
# @within function command:load

# 初期化完了(後で#を外しといて💛)
	#data modify storage tesv_whole: Once set value 1b
# 
#> Scoreboard
#@public
	scoreboard objectives add Global dummy
	scoreboard objectives add Temporary dummy
	scoreboard objectives add Constant dummy
	## プレイヤーの行動
		scoreboard objectives add PlayTime minecraft.custom:minecraft.play_time
	## ステータス
		### 体力
			scoreboard objectives add Health dummy
			scoreboard objectives add Health.Max dummy
			scoreboard objectives add Health.Recov.Dur dummy
			scoreboard objectives add Health.Recov.Tmr dummy
			scoreboard objectives add Health.Recov.Per dummy
			scoreboard objectives add Health.Head dummy
			scoreboard objectives add Health.Chest dummy
			scoreboard objectives add Health.Legs dummy
			scoreboard objectives add Health.Feet dummy
		### 攻撃力
			scoreboard objectives add Attack dummy
		### 防御力
			scoreboard objectives add Defense dummy
			scoreboard objectives add Defense.Head dummy
			scoreboard objectives add Defense.Chest dummy
			scoreboard objectives add Defense.Legs dummy
			scoreboard objectives add Defense.Feet dummy
# 
	scoreboard objectives add gun minecraft.used:minecraft.carrot_on_a_stick
	scoreboard objectives add time minecraft.used:minecraft.carrot_on_a_stick
	scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick
	scoreboard objectives add magic_damage dummy
	scoreboard objectives add mana_damage dummy
	scoreboard objectives add Health4 dummy
	scoreboard objectives add Health5 dummy
	scoreboard objectives add death_times deathCount
	scoreboard objectives add attack minecraft.custom:minecraft.damage_dealt
	scoreboard objectives add attack_n minecraft.custom:minecraft.damage_dealt
	scoreboard objectives add mp dummy
	scoreboard objectives add MP dummy
	scoreboard objectives add MP1 dummy
	scoreboard objectives add MP2 dummy
	scoreboard objectives add MP3 dummy
	scoreboard objectives add MP4 dummy
	scoreboard objectives add MP5 dummy
	scoreboard objectives add MP6 dummy
	scoreboard objectives add player dummy
	scoreboard objectives add player1 dummy
	scoreboard objectives add Player1 dummy
	scoreboard objectives add player2 dummy
	scoreboard objectives add player3 dummy
	scoreboard objectives add player4 dummy
	scoreboard objectives add player5 dummy
	scoreboard objectives add player_time dummy
	scoreboard objectives add enemy_skill_0 dummy
	scoreboard objectives add enemy_skill_1 dummy
	scoreboard objectives add enemy_skill_2 dummy
	scoreboard objectives add enemy_skill_3 dummy
	scoreboard objectives add enemy_skill_4 dummy
	scoreboard objectives add enemy_skill_5 dummy
	scoreboard objectives add protection dummy
	scoreboard objectives add Protection dummy
	scoreboard objectives add ID dummy
	scoreboard objectives add SP_health dummy
	scoreboard objectives add SP_majicka dummy
	scoreboard objectives add SP_stamina dummy
	scoreboard objectives add Settings trigger
# ScoreHolder
	scoreboard players set $2 Constant 2
	scoreboard players set $100 Constant 100
	scoreboard players set $2^15 Constant 32768
	scoreboard players set $2^16 Constant 65536
	#scoreboard players set $ID ID 1
# 
#> Tag
#@public
 #declare tag Entity
 #declare tag This
# 
#> ScoreHolder
#@public
 #declare score_holder $2
 #declare score_holder $100
 #declare score_holder $2^15
 #declare score_holder $2^16
 #declare score_holder $ID
# 
#> Storage
#@public
 #declare storage tesv_whole:
