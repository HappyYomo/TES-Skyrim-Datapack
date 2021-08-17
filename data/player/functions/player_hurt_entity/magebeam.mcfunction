#> player:player_hurt_entity/magebeam
#
# メイジビームを持っていたら
#
# @within function player:player_hurt_entity/damage

# マジカをコピー
	scoreboard players operation $Majika.Max.Copy Temporary = @s Majika.Max
# 計算
	scoreboard players operation $Majika.Max.Copy Temporary /= @s Mage
	scoreboard players operation $Majika.Max.Copy Temporary /= @s Mage
# 攻撃力に追加
	scoreboard players operation $Attack.Copy Temporary *= $Majika.Max.Copy Temporary
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Majika.Max.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Majika.Max.Copy
