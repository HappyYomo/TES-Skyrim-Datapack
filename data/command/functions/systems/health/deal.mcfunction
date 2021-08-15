execute as @a if data entity @s SelectedItem if score @s attack matches 1.. at @s anchored eyes run summon armor_stand ~ ~ ~ {Tags:["attack"],Small:1b,Invisible:1,NoGravity:1,Marker:1b}
execute as @a if data entity @s SelectedItem if score @s attack matches 1.. at @s run tp @e[tag=attack,distance=..1,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s

#Caliculate Atk damage
execute as @a if data entity @s SelectedItem.tag.MageBeam if score @s attack matches 1.. run function command:systems/health/deal/deal

#Get health less than based health
execute as @e[tag=enemy] at @s at @a[distance=..6,scores={attack=1..}] store result score @s Health5 run data get entity @s Health
execute as @e[tag=enemy] at @s at @a[distance=..6,scores={attack=1..}] run scoreboard players operation @s Health4 -= @s Health5
execute as @a if entity @s[nbt={SelectedItem:{tag:{MageBeam:1b}}}] if score @s attack matches 1.. run scoreboard players reset @s attack

#Put ATK damage into ArmorStand
execute as @a if data entity @s SelectedItem if score @s attack matches 1.. at @s store result score @e[tag=attack,distance=..1,sort=nearest,limit=1] ATK run data get entity @s SelectedItem.tag.ATK
execute as @a if data entity @s SelectedItem if score @s attack matches 1.. at @s run scoreboard players operation @e[tag=attack,distance=..1,sort=nearest,limit=1] ATK += @s sharpness

#Show dealt damage
execute as @a if entity @s[tag=ShowDealt] if data entity @s SelectedItem if score @s attack matches 1.. store result score @s ATK run data get entity @s SelectedItem.tag.ATK
execute as @a if entity @s[tag=ShowDealt] if data entity @s SelectedItem if score @s attack matches 1.. run scoreboard players operation @s ATK += @s sharpness
execute as @a if entity @s[tag=ShowDealt] if data entity @s SelectedItem if score @s attack matches 1.. run tellraw @s [{"text":"Damage: "},{"score":{"name":"*","objective":"ATK"},"color":"red"}]
execute as @a if entity @s[tag=ShowDealt] if data entity @s SelectedItem if score @s attack matches 1.. run scoreboard players reset @s ATK

execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=attack] at @s run tp @s ^ ^ ^1
execute as @e[tag=attack] at @s run scoreboard players operation @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=attack] at @s at @e[tag=enemy,scores={Health4=1..},distance=..2,sort=nearest,limit=1] run kill @s
execute as @a at @s run scoreboard players reset @s attack
execute as @e[tag=attack] at @s run kill @s
execute as @e[tag=enemy] at @s at @a[distance=..6] store result score @s Health4 run data get entity @s Health
execute as @e[tag=enemy] at @s run data merge entity @s {Health:20f}