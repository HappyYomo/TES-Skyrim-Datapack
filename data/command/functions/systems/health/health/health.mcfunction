scoreboard players operation @s healthA /= @s Health
scoreboard players operation @s health += @s healthA
scoreboard players operation @s healthA = @s HEALTH
scoreboard players operation @s healthA -= @s health
execute if score @s healthA matches ..0 run scoreboard players operation @s health += @s healthA
scoreboard players operation @s healthA = @s HEALTH
scoreboard players reset @s healthB