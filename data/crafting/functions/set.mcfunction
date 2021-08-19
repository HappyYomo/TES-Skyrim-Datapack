#> crafting:set
#
# 作業台を設置
#
# @within function crafting:tick

# 作業台が設置出来なかったら
	execute unless block ~ ~ ~ minecraft:air run give @a[scores={Used.EndermiteSE=1..}] minecraft:endermite_spawn_egg{display:{Name:'{"text":"作業台","color":"blue","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"置きたい場所においてください","color":"yellow","italic":false}']},EntityTag:{id:"minecraft:marker",Tags:["Crafting","New.Marker"]}}
	execute unless block ~ ~ ~ minecraft:air run kill @s
# Tagを外す
	execute if block ~ ~ ~ minecraft:air run tag @s remove New.Marker
# ドロッパーを設置
	execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"作業台","color":"blue","bold":true,"underlined":true,"italic":false}'}
