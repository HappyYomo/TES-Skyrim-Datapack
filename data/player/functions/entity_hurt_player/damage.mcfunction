#> player:entity_hurt_player/damage
#
# ダメージを受ける
#
# @within function player:entity_hurt_player/filters/0

# プレイヤーのステータスをコピー
	scoreboard players operation $Health.Max.Copy Temporary = @a[tag=This,distance=..0.001] Health.Max
	scoreboard players operation $Defense.Copy Temporary = @a[tag=This,distance=..0.001] Defense
# 攻撃力を取得
	execute if data entity @s HandItems[0].tag.Attack store result score $Attack Temporary run data get entity @s HandItems[0].tag.Attack
	execute unless data entity @s HandItems[0].tag.Attack store result score $Attack Temporary run data get entity @s HandItems[1].tag.Attack
# 体力を減らす
	scoreboard players add $Defense.Copy Temporary 100
	scoreboard players operation $Defense.Copy Temporary /= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary *= $Defense.Copy Temporary
	scoreboard players operation $Health.Max.Copy Temporary -= $Attack Temporary
	scoreboard players operation $Health.Max.Copy Temporary *= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary /= @a[tag=This,distance=..0.001] Health.Max
	scoreboard players operation @a[tag=This,distance=..0.001] Health *= $Health.Max.Copy Temporary
	scoreboard players operation @a[tag=This,distance=..0.001] Health /= $100 Constant
# 回復
	effect give @a[tag=This] minecraft:regeneration 1 250 true
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Max.Copy
	scoreboard players reset $Defense.Copy
	scoreboard players reset $Attack
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Max.Copy
 #declare score_holder $Defense.Copy
 #declare score_holder $Attack
