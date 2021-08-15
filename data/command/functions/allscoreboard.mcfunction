execute as @a at @s run tellraw @s [{"text":"Thanks For Using ","color":"green","bold":"true"},{"text":"Skyrim","color":"red","bold":"true","underlined":"true"},{"text":" Datapack","color":"green","bold":"true"}]
execute as @a at @s run tellraw @a [{"text":"Click ","color":"light_purple"},{"text":"HERE","color":"dark_red","bold":"true","underlined":"true","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCw6M4sRloWV0vqXY"}},{"text":" to link Ebi Sauce Channel"}]

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
scoreboard objectives add defense4 dummy
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
scoreboard objectives add a dummy
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

scoreboard objectives add SP.Health dummy
scoreboard objectives add SP.Majicka dummy
scoreboard objectives add SP.Stamina dummy
#For Weapon Charge Speed
scoreboard objectives add Weapon.Charge dummy
scoreboard objectives add Weapon.Charge.D dummy
scoreboard objectives add Settings trigger
scoreboard players enable @a Settings

#セット
scoreboard players set 2 a 2
scoreboard players set 10 a 10
scoreboard players set 100 a 100
scoreboard players set ID ID 1