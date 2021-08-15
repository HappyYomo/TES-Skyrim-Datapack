execute as @e[tag=enemy] at @s if entity @s[nbt={HandItems:[{tag:{EnemyFireRod:1b}},{}]}] run tag @s add enemy_skill_0
execute as @e[tag=enemy_skill_0] at @s at @a[distance=..10] run scoreboard players add @s enemy_skill_0 1
execute at @a as @e[tag=enemy_skill_0,scores={enemy_skill_0=50},distance=..10] at @s run summon armor_stand ~ ~ ~ {Tags:["EnemyFireball","delete"],Invisible:1,NoGravity:1,Marker:1}
execute at @a as @e[tag=enemy_skill_0,scores={enemy_skill_0=50},distance=..10] at @s run tp @e[tag=EnemyFireball,distance=..1,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s
execute as @e[tag=enemy_skill_0,scores={enemy_skill_0=50}] at @s at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..10]
execute as @e[tag=EnemyFireball] at @s run tp @s ^ ^ ^1
execute as @e[tag=EnemyFireball] at @s at @a[distance=..1] run summon creeper ~ ~ ~ {ExplosionRadius:1d,Fuse:0}
execute as @e[tag=EnemyFireball] at @s run scoreboard players operation @a[distance=..1,sort=nearest,limit=1] health -= @s ATK
execute as @e[tag=EnemyFireball] at @s at @a[distance=..1] run kill @s
execute as @e[tag=EnemyFireball] at @s run particle flame ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=EnemyFireball] at @s run particle lava ~ ~1 ~ 0 0 0 1 1 force
execute as @e[tag=EnemyFireball] at @s run scoreboard players add @s time 1
execute as @e[tag=EnemyFireball,scores={time=50..}] at @s run kill @s
execute as @e[tag=EnemyFireball] at @s run scoreboard players set @s ATK 75
execute as @e[tag=enemy_skill_0,scores={enemy_skill_0=50..}] at @s run scoreboard players reset @s enemy_skill_0