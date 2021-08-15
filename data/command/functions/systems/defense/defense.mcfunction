#システム
execute as @a at @s run scoreboard players set @s defense 0
#head
execute as @a if data entity @s Inventory[{Slot:103b}].tag.Armor store result score @s defense3 run data get entity @s Inventory[{Slot:103b}].tag.Defense
execute as @a if data entity @s Inventory[{Slot:103b}].tag.Armor store result score @s defense run scoreboard players operation @s defense += @s defense3
#chest
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Armor store result score @s defense2 run data get entity @s Inventory[{Slot:102b}].tag.Defense
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Armor store result score @s defense run scoreboard players operation @s defense += @s defense2
#legs
execute as @a if data entity @s Inventory[{Slot:101b}].tag.Armor store result score @s defense1 run data get entity @s Inventory[{Slot:101b}].tag.Defense
execute as @a if data entity @s Inventory[{Slot:101b}].tag.Armor store result score @s defense run scoreboard players operation @s defense += @s defense1
#feet
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Armor store result score @s defense0 run data get entity @s Inventory[{Slot:100b}].tag.Defense
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Armor store result score @s defense run scoreboard players operation @s defense += @s defense0
#Protection
execute as @a store result score @s defense run scoreboard players operation @s defense += @s protection

#CustomDefense
#scoreboard players set @a defense 10000