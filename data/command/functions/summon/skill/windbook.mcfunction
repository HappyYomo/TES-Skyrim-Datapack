execute as @e[tag=Entity] at @s if entity @s[nbt={HandItems:[{},{tag:{EnemyWindBook:1b}}]}] run tag @s add enemy_skill_5
execute as @e[tag=enemy_skill_5] at @s at @a[distance=..10] run scoreboard players add @s enemy_skill_5 1
execute at @a as @e[tag=enemy_skill_5,scores={enemy_skill_5=25},distance=..4] at @s run summon armor_stand ~ ~ ~ {Tags:["EnemyWind","delete"],Invisible:1,NoGravity:1,Marker:1}
execute at @a as @e[tag=enemy_skill_5,scores={enemy_skill_5=25},distance=..4] at @s run tp @e[tag=EnemyWind,distance=..1,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s
execute as @e[tag=enemy_skill_5,scores={enemy_skill_5=25}] at @s at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..4]
execute as @e[tag=EnemyWind] at @s run tp @s ^ ^ ^1
execute as @e[tag=EnemyWind] at @s run playsound minecraft:entity.player.hurt player @a[distance=..1]
execute as @e[tag=EnemyWind] at @s run scoreboard players operation @a[distance=..1] health -= @s ATK
execute as @e[tag=EnemyWind] at @s at @a[distance=..1] run kill @s
execute as @e[tag=EnemyWind] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=EnemyWind] at @s run playsound minecraft:entity.player.attack.sweep voice @a[distance=..7] ~ ~ ~ 0.5 2
execute as @e[tag=EnemyWind] at @s run scoreboard players add @s time 1
execute as @e[tag=EnemyWind,scores={time=10..}] at @s run kill @s
execute as @e[tag=EnemyWind] at @s run scoreboard players set @s ATK 125
execute as @e[tag=enemy_skill_5,scores={enemy_skill_5=25..}] at @s run scoreboard players reset @s enemy_skill_5
