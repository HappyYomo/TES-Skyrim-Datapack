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
	scoreboard objectives add gun minecraft.used:minecraft.carrot_on_a_stick
	scoreboard objectives add time minecraft.used:minecraft.carrot_on_a_stick
	scoreboard objectives add death dummy
	scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick
	scoreboard objectives add magic_damage dummy
	scoreboard objectives add mana_damage dummy
	scoreboard objectives add defense dummy
	scoreboard objectives add defense0 dummy
	scoreboard objectives add defense1 dummy
	scoreboard objectives add defense2 dummy
	scoreboard objectives add defense3 dummy
	scoreboard objectives add sharpness dummy
	scoreboard objectives add enemy_health dummy
	scoreboard objectives add player_health dummy
	scoreboard objectives add HEALTH dummy
	scoreboard objectives add Health dummy
	scoreboard objectives add health dummy
	scoreboard objectives add health_n dummy
	scoreboard objectives add health_o dummy
	scoreboard objectives add healthA dummy
	scoreboard objectives add healthB dummy
	scoreboard objectives add health0 dummy
	scoreboard objectives add health1 dummy
	scoreboard objectives add health2 dummy
	scoreboard objectives add health3 dummy
	scoreboard objectives add Health0 dummy
	scoreboard objectives add Health1 dummy
	scoreboard objectives add Health2 dummy
	scoreboard objectives add Health3 dummy
	scoreboard objectives add Health4 dummy
	scoreboard objectives add Health5 dummy
	scoreboard objectives add death_times deathCount
	scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
	scoreboard objectives add Constant dummy
	scoreboard objectives add ATK dummy
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
	scoreboard players set $100 Constant 100
	scoreboard players set $ID ID 1
# 
#> ScoreHolder
#@public
 #declare score_holder $100
 #declare score_holder $ID
# 
#> Storage
#@public
 #declare storage tesv_whole:
