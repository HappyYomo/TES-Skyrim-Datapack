execute as @a at @s run scoreboard players set @s Protection 0
execute as @a at @s run scoreboard players set @s protection 0
execute as @a at @s store result score @s Protection run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{}].lvl 10
execute as @a at @s run scoreboard players operation @s protection += @s Protection
execute as @a at @s store result score @s Protection run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{}].lvl 10
execute as @a at @s run scoreboard players operation @s protection += @s Protection
execute as @a at @s store result score @s Protection run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{}].lvl 10
execute as @a at @s run scoreboard players operation @s protection += @s Protection
execute as @a at @s store result score @s Protection run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{}].lvl 10
execute as @a at @s run scoreboard players operation @s protection += @s Protection