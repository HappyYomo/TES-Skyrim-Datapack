#> player:player_hurt_entity/magebeam
#
# プレイヤーがメイジビームを持っていたら
#
# @within function player:player_hurt_entity/damage

# 魔力をコピー
	scoreboard players operation $Magica.Max.Copy Temporary = @s Magica.Max
# 攻撃力を計算
	scoreboard players operation $Magica.Max.Copy Temporary /= @s Mage
	scoreboard players operation $Magica.Max.Copy Temporary /= @s Mage
	scoreboard players operation $Attack Temporary *= $Magica.Max.Copy Temporary
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Magica.Max.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Magica.Max.Copy
 #declare score_holder $Attack
