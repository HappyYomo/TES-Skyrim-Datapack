#> crafting:break
#
# 作業台を破壊
#
# @within function crafting:tick

# 作業台を渡す
	execute as @a[scores={Mined.Dropper=1..},distance=..6,limit=1] run give @s minecraft:endermite_spawn_egg{display:{Name:'{"text":"作業台","color":"blue","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"置きたい場所においてください","color":"light_purple","italic":false}']},EntityTag:{id:"minecraft:marker",Tags:["Crafting","New.Marker"]}}
# ドロッパーを消す
	execute as @e[type=minecraft:item,distance=..2] if data entity @s {Item:{id:"minecraft:dropper",Count:1b},Age:0s} if data entity @s Item.tag.display.Name run tag @s add Doropper
	execute as @e[type=minecraft:item,tag=Doropper,distance=..2,limit=1] run kill @s
	execute as @e[type=minecraft:item,tag=Doropper,distance=..2,limit=1] run tag @s remove Doropper
# 消す
	kill @s
# 
#> Tag
#@private
 #declare tag Doropper
