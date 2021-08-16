#体力
execute as @e[tag=Entity] run scoreboard players add @s enemy_health 1
execute as @e[tag=Entity] if score @s enemy_health matches 1 store result score @s health run data get entity @s Health 5
execute as @e[tag=Entity] if data entity @s ArmorItems[3].tag.EHP if score @s enemy_health matches 1 store result score @s health run data get entity @s ArmorItems[3].tag.Health
execute as @e[tag=Entity] at @s if score @s health matches ..0 run summon chest_minecart ~ ~ ~ {Tags:["belonging"],Invulnerable:1,NoAI:1}
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify storage minecraft:belonging ArmorItems set from entity @s ArmorItems
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify storage minecraft:belonging HandItems set from entity @s HandItems
data modify storage minecraft:belonging ArmorItems[0].Slot set value 0b
data modify storage minecraft:belonging ArmorItems[1].Slot set value 1b
data modify storage minecraft:belonging ArmorItems[2].Slot set value 2b
data modify storage minecraft:belonging ArmorItems[3].Slot set value 3b
data modify storage minecraft:belonging HandItems[0].Slot set value 4b
data modify storage minecraft:belonging HandItems[1].Slot set value 5b
execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify entity @e[tag=belonging,sort=nearest,limit=1] Items append from storage minecraft:belonging ArmorItems[{}]
execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify entity @e[tag=belonging,sort=nearest,limit=1] Items append from storage minecraft:belonging HandItems[{}]
execute as @e[tag=Entity] at @s if score @s health matches ..0 run kill @s

#システム1
execute as @a run scoreboard players add @s player_health 1
execute as @a if score @s player_health matches 1 run scoreboard players set @s health 100

execute as @a unless entity @s[nbt={Inventory:[{Slot:103b,tag:{HP:1b}}]}] run scoreboard players set @s Health3 0
execute as @a unless entity @s[nbt={Inventory:[{Slot:102b,tag:{HP:1b}}]}] run scoreboard players set @s Health2 0
execute as @a unless entity @s[nbt={Inventory:[{Slot:101b,tag:{HP:1b}}]}] run scoreboard players set @s Health1 0
execute as @a unless entity @s[nbt={Inventory:[{Slot:100b,tag:{HP:1b}}]}] run scoreboard players set @s Health0 0
execute as @a run scoreboard players set @s HEALTH 100
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,tag:{HP:1b}}]}] run scoreboard players add @s Health3 1
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,tag:{HP:1b}}]}] run scoreboard players add @s Health2 1
execute as @a if entity @s[nbt={Inventory:[{Slot:101b,tag:{HP:1b}}]}] run scoreboard players add @s Health1 1
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,tag:{HP:1b}}]}] run scoreboard players add @s Health0 1

#システム2
execute as @a if data entity @s Inventory[{Slot:100b}].tag.HP if score @s Health0 matches 1.. run function command:systems/health/health/armour_0
execute as @a if data entity @s Inventory[{Slot:101b}].tag.HP if score @s Health1 matches 1.. run function command:systems/health/health/armour_1
execute as @a if data entity @s Inventory[{Slot:102b}].tag.HP if score @s Health2 matches 1.. run function command:systems/health/health/armour_2
execute as @a if data entity @s Inventory[{Slot:103b}].tag.HP if score @s Health3 matches 1.. run function command:systems/health/health/armour_3

#システム3
execute as @a[scores={player_health=1}] run scoreboard players operation @s healthA = @s HEALTH
execute as @a[scores={player_health=1..}] run scoreboard players set @a Health 5

#システム4
execute as @a run scoreboard players add @s healthB 1
execute as @a if score @s healthB matches 100.. run function command:systems/health/health/health
execute as @a if score @s health matches ..0 run kill @s
execute as @a if score @s health matches ..0 store result score @s health run scoreboard players get @s HEALTH

#システム5
execute as @e[tag=belonging] at @s unless entity @e[tag=Entity,distance=..15] run scoreboard players add @s death 1
execute as @e[tag=belonging] at @s if score @s death matches 600.. unless entity @e[tag=Entity,distance=..15] run kill @s
