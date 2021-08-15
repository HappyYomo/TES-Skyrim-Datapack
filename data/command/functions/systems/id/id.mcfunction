#システム
execute store result score @s ID run scoreboard players add $ID ID 1 
execute as @s run tag @s remove ID
