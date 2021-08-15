scoreboard players operation @s mp /= @s MP3
scoreboard players operation @s mp /= @s MP3
execute store result score @s ATK run data get entity @s SelectedItem.tag.ATK
scoreboard players operation @s ATK += @s sharpness
execute as @s at @s store result score @e[tag=attack,distance=..1,sort=nearest,limit=1] ATK run scoreboard players operation @s ATK *= @s mp
execute as @s run tellraw @s [{"text":"与えたダメージ: "},{"score":{"name":"*","objective":"ATK"},"color":"red"}]