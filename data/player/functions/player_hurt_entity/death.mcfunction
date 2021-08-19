#> player:player_hurt_entity/death
#
# 死
#
# @within function player:player_hurt_entity/damage

# チェスト付きトロッコを召喚
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["DeathBox","New.ChestMinecart"],Invulnerable:1b}
# ドロップアイテムを用意
	data modify storage tesv_whole: DeathItems append from entity @s ArmorItems[]
	data modify storage tesv_whole: DeathItems append from entity @s HandItems[]
	data remove storage tesv_whole: DeathItems[{tag:{Remove:1b}}].id
	execute if data storage tesv_whole: DeathItems[0].id run data modify storage tesv_whole: DeathItems[0].Slot set value 0b
	execute if data storage tesv_whole: DeathItems[1].id run data modify storage tesv_whole: DeathItems[1].Slot set value 1b
	execute if data storage tesv_whole: DeathItems[2].id run data modify storage tesv_whole: DeathItems[2].Slot set value 2b
	execute if data storage tesv_whole: DeathItems[3].id run data modify storage tesv_whole: DeathItems[3].Slot set value 3b
	execute if data storage tesv_whole: DeathItems[4].id run data modify storage tesv_whole: DeathItems[4].Slot set value 9b
	execute if data storage tesv_whole: DeathItems[5].id run data modify storage tesv_whole: DeathItems[5].Slot set value 10b
# アイテムを入れる
	execute if data storage tesv_whole: DeathItems[0].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[0]
	execute if data storage tesv_whole: DeathItems[1].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[1]
	execute if data storage tesv_whole: DeathItems[2].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[2]
	execute if data storage tesv_whole: DeathItems[3].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[3]
	execute if data storage tesv_whole: DeathItems[4].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[4]
	execute if data storage tesv_whole: DeathItems[5].id run data modify entity @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001,limit=1] Items append from storage tesv_whole: DeathItems[5]
# 死
	kill @s
# Tagを外す
	tag @e[type=minecraft:chest_minecart,tag=New.ChestMinecart,distance=..0.001] remove New.ChestMinecart
# 一時使用Storageをリセット
	data remove storage tesv_whole: DeathItems
# 
#> Tag
#@private
 #declare tag New.ChestMinecart
# 
#> Tag
#@private
#@within function command:tick
 #declare tag DeathBox
