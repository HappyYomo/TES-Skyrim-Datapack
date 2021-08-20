#> skill_tree:return.items/
#
# アイテムを返す
#
# @within function skill_tree:changed

# Slotを消す
	data remove storage tesv_whole: EnderItemsCopy[].Slot
# アイテムを渡す
	function skill_tree:return.items/loop
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Gave
# 
#> ScoreHolder
#@within function skill_tree:return.items/*
 #declare score_holder $Gave
