#> skill_tree:changed
#
# アイテムが変ったら
#
# @within function player:tick

# アイテムをコピー
	data modify storage tesv_whole: EnderItemsCopy set from entity @s EnderItems
# アイテムを返す
	data remove storage tesv_whole: EnderItemsCopy[{tag:{SkillItem:1b}}]
	execute if data storage tesv_whole: EnderItemsCopy[0] run function skill_tree:return.items/
# アイテムを消す
	clear @s #skill_tree:all_items{SkillItem:1b}
	execute as @e[type=minecraft:item,distance=..5] if data entity @s {Item:{tag:{SkillItem:1b}}} run kill @s
# UIをセット
	execute if score @s SkillPage matches 1 run function skill_tree:pages/1/ui
# 一時使用Storageをリセット
	data remove storage tesv_whole: EnderItemsCopy
