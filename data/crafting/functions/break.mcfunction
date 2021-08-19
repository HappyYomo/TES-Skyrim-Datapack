#> crafting:break
#
# 作業台を破壊
#
# @within function crafting:tick

# ドロッパーを作業台に変える
	execute as @e[type=minecraft:item,distance=..2] if data entity @s {Item:{id:"minecraft:dropper",Count:1b},Age:0s} if data entity @s Item.tag.display.Name run tag @s add Dropper
	execute as @e[type=minecraft:item,tag=Dropper,distance=..2,limit=1] run data modify entity @s Item set value {id:"minecraft:endermite_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"作業台","color":"blue","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"置きたい場所においてください","color":"light_purple","italic":false}']},EntityTag:{id:"minecraft:marker",Tags:["Crafting","New.Marker"]}}}
	execute as @e[type=minecraft:item,tag=Dropper,distance=..2,limit=1] run tag @s remove Dropper
# 消す
	kill @s
# 
#> Tag
#@private
 #declare tag Dropper
