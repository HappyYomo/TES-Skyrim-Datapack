#システム1
execute as @a at @s run scoreboard players set @s MP3 10
execute as @a unless data entity @s SelectedItem.tag.Magic run scoreboard players set @s player1 0
execute as @a unless data entity @s Inventory[{Slot:-106b}].tag.Magic run scoreboard players set @s Player1 0
execute as @a unless data entity @s Inventory[{Slot:103b}] run scoreboard players set @s player2 0
execute as @a unless data entity @s Inventory[{Slot:102b}] run scoreboard players set @s player3 0
execute as @a unless data entity @s Inventory[{Slot:101b}] run scoreboard players set @s player4 0
execute as @a unless data entity @s Inventory[{Slot:100b}] run scoreboard players set @s player5 0
execute as @a at @s run scoreboard players set @s MP5 100

#手
execute as @a if data entity @s SelectedItem.tag.Magic if score @s player1 matches 1.. store result score @s MP6 run data get entity @s SelectedItem.tag.MP
execute as @a if score @s player1 matches 1.. run scoreboard players operation @s MP5 += @s MP6
#左手
execute as @a if data entity @s Inventory[{Slot:-106b}].tag.Magic if score @s Player1 matches 1.. store result score @s MP6 run data get entity @s Inventory[{Slot:-106b}].tag.MP
execute as @a if score @s Player1 matches 1.. run scoreboard players operation @s MP5 += @s MP6
#頭
execute as @a if data entity @s Inventory[{Slot:103b}].tag.Armor if score @s player2 matches 1.. store result score @s MP6 run data get entity @s Inventory[{Slot:103b}].tag.MP
execute as @a if score @s player2 matches 1.. run scoreboard players operation @s MP5 += @s MP6
#体
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Armor if score @s player3 matches 1.. store result score @s MP6 run data get entity @s Inventory[{Slot:102b}].tag.MP
execute as @a if score @s player3 matches 1.. run scoreboard players operation @s MP5 += @s MP6
#足
execute as @a if data entity @s Inventory[{Slot:101b}].tag.Armor if score @s player4 matches 1.. store result score @s MP6 run data get entity @s Inventory[{Slot:101b}].tag.MP
execute as @a if score @s player4 matches 1.. run scoreboard players operation @s MP5 += @s MP6
#靴
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Armor if score @s player5 matches 1.. store result score @s MP6 run data get entity @s Inventory[{Slot:100b}].tag.MP
execute as @a if score @s player5 matches 1.. run scoreboard players operation @s MP5 += @s MP6

execute as @a if score @s player matches 1 run scoreboard players operation @s MP4 = @s MP5
execute as @a if data entity @s SelectedItem.tag.Magic run scoreboard players add @s player1 1
execute as @a if data entity @s Inventory[{Slot:-106b}].tag.Magic run scoreboard players add @s Player1 1
execute as @a if data entity @s Inventory[{Slot:103b}].tag.Armor run scoreboard players add @s player2 1
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Armor run scoreboard players add @s player3 1
execute as @a if data entity @s Inventory[{Slot:101b}].tag.Armor run scoreboard players add @s player4 1
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Armor run scoreboard players add @s player5 1

#システム2
execute as @a at @s run scoreboard players add @s MP2 1
execute as @a if score @s MP2 matches 100.. run scoreboard players operation @s MP4 /= @s MP3
execute as @a if score @s MP2 matches 100.. run scoreboard players operation @s MP += @s MP4
execute as @a if score @s MP2 matches 100.. run scoreboard players operation @s MP4 = @s MP5
execute as @a if score @s MP2 matches 100.. run scoreboard players operation @s MP4 -= @s MP
execute as @a if score @s MP2 matches 100.. if score @s MP4 matches ..0 run scoreboard players operation @s MP += @s MP4
execute as @a if score @s MP2 matches 100.. run scoreboard players operation @s MP4 = @s MP5
execute as @a if score @s MP2 matches 100.. run scoreboard players reset @s MP2
execute as @a at @s run scoreboard players operation @s mp = @s MP5