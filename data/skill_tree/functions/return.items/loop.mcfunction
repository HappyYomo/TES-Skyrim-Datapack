#> skill_tree:return.items/loop
#
# アイテムを渡す
#
# @within function skill_tree:return.items/
# @private

# シュルカーボックスを空にする
	execute if data block 512 0 512 Items[0] run data remove block 512 0 512 Items
# アイテムを追加する
	data modify block 512 0 512 Items append from storage tesv_whole: EnderItemsCopy[0]
# アイテムを渡す
	execute store result score $Gave Temporary run loot give @s mine 512 0 512 minecraft:debug_stick
# アイテムを渡せなかったら
	execute if score $Gave Temporary matches 0 run loot spawn ~ ~ ~ mine 512 0 512 minecraft:debug_stick
# データを消す
	data remove storage tesv_whole: EnderItemsCopy[0]
# ループ
	execute if data storage tesv_whole: EnderItemsCopy[0] run function skill_tree:return.items/loop
