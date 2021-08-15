#attacked
execute as @a run scoreboard players set @s Constant 10
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s health_n = @s health
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s health_o = @s health
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s defense += $100 Constant
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s defense /= $100 Constant
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s health_o *= @s defense
execute as @a if score @s damage_taken matches 1.. run scoreboard players operation @s health_n *= @s defense
execute as @a if score @s damage_taken matches 1.. at @s at @e[tag=enemy,distance=..3] run summon armor_stand ~ ~ ~ {Tags:["ATK"],Invisible:1,Marker:1,NoGravity:1}
execute at @a[scores={damage_taken=1..}] as @e[tag=enemy,distance=..3] at @s run tp @e[tag=ATK,distance=..1,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s
execute as @e[tag=enemy] at @s store result score @e[tag=ATK,distance=..1,sort=nearest,limit=1] ATK run data get entity @s HandItems[].tag.ATK
execute as @e[tag=ATK] at @s run tp @s ^ ^ ^1

execute as @e[tag=ATK] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health_o -= @s ATK
execute as @e[tag=ATK] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health_o *= $100 Constant
execute as @e[tag=ATK] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health_o /= @a[distance=..1,sort=nearest,limit=1] health_n
execute as @e[tag=ATK] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health *= @a[distance=..1,sort=nearest,limit=1] health_o
execute as @e[tag=ATK] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health /= $100 Constant
execute as @e[tag=ATK] at @s run scoreboard players add @s death 1
execute as @a at @s run effect give @s minecraft:instant_health 3 3 true
execute as @a at @s run scoreboard players reset @s damage_taken
execute as @a at @s run scoreboard players reset @s health_n
execute as @a at @s run scoreboard players reset @s health_o
execute as @e[tag=ATK] at @s run kill @s
#execute as @e[tag=ATK,scores={death=2..}] at @s run kill @s

#Attacker
function command:systems/health/deal
