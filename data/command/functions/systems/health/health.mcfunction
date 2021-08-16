## Healthが無くなったら
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run summon chest_minecart ~ ~ ~ {Tags:["belonging"],Invulnerable:1,NoAI:1}
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify storage minecraft:belonging ArmorItems set from entity @s ArmorItems
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify storage minecraft:belonging HandItems set from entity @s HandItems
#data modify storage minecraft:belonging ArmorItems[0].Slot set value 0b
#data modify storage minecraft:belonging ArmorItems[1].Slot set value 1b
#data modify storage minecraft:belonging ArmorItems[2].Slot set value 2b
#data modify storage minecraft:belonging ArmorItems[3].Slot set value 3b
#data modify storage minecraft:belonging HandItems[0].Slot set value 4b
#data modify storage minecraft:belonging HandItems[1].Slot set value 5b
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify entity @e[tag=belonging,sort=nearest,limit=1] Items append from storage minecraft:belonging ArmorItems[{}]
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run data modify entity @e[tag=belonging,sort=nearest,limit=1] Items append from storage minecraft:belonging HandItems[{}]
#execute as @e[tag=Entity] at @s if score @s health matches ..0 run kill @s
