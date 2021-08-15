#システム
execute as @a unless score @s ID matches -2147483648.. run tag @s add ID
execute as @a[tag=ID,limit=1] if entity @s run function command:systems/id/id