#システム1
function command:systems/id

#システム3
execute as @a at @s run title @s actionbar [{"text":"Health: ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"Health"},"color":"red","bold":true},"/",{"score":{"name":"@s","objective":"Health.Max"},"color":"red","bold":true},{"text":"   Defense: ","color":"dark_green"},{"score":{"name":"@s","objective":"Defense"},"color":"green","bold":true},{"text":"   Majicka: ","color":"blue"},{"score":{"name":"@s","objective":"Majika"},"color":"aqua","bold":true},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"Majika.Max"},"color":"aqua","bold":true}]
execute as @e[tag=Invisible] at @s run effect give @s invisibility 1 1 true
