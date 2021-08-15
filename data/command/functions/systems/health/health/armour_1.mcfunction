#足
execute store result score @s health1 run data get entity @s Inventory[{Slot:101b}].tag.Health
execute as @s run scoreboard players operation @s HEALTH += @s health1