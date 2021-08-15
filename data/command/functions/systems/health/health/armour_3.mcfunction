#頭
execute store result score @s health3 run data get entity @s Inventory[{Slot:103b}].tag.Health
execute as @s run scoreboard players operation @s HEALTH += @s health3