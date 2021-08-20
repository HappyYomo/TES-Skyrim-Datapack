#> player:open.enderchest
#
# エンダーチェストを開いたら
#
# @within function player:tick

# スキルツリーの画面を開く
	execute if entity @s[tag=!Open.SkillTree] run function skill_tree:open
# スコアをリセット
	scoreboard players reset @s Open.Enderchest
