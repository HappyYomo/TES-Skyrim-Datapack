#> crafting:give
#
# 作業台を渡す
#
# @within function player:tick

# ジグソーブロックを消す
	clear @s minecraft:jigsaw 1
# 
	give @s minecraft:endermite_spawn_egg{display:{Name:'{"text":"作業台","color":"blue","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"置きたい場所においてください","color":"light_purple","italic":false}']},EntityTag:{id:"minecraft:marker",Tags:["Crafting","New.Marker"]}}
