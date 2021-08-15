#体
execute store result score @s health2 run data get entity @s Inventory[{Slot:102b}].tag.Health
execute as @s run scoreboard players operation @s HEALTH += @s health2