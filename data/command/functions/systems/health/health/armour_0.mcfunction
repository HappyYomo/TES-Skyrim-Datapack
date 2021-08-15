#靴
execute store result score @s health0 run data get entity @s Inventory[{Slot:100b}].tag.Health
execute as @s run scoreboard players operation @s HEALTH += @s health0