#> player:player_hurt_entity/magebeam
#
# メイジビームを持っていたら
#
# @within function player:player_hurt_entity/damage

# マジカをコピー
	scoreboard players operation $Majika.Max.Copy Temporary = @s Majika.Max
# メイジローブ
	execute if data entity @s {Inventory:[{Slot:100b,tag:{CommonMage:1b}},{Slot:101b,tag:{CommonMage:1b}},{Slot:102b,tag:{CommonMage:1b}},{Slot:103b,tag:{CommonMage:1b}}]} run scoreboard players set $MageBeam Temporary 8
	execute if data entity @s {Inventory:[{Slot:100b,tag:{SkilledMage:1b}},{Slot:101b,tag:{SkilledMage:1b}},{Slot:102b,tag:{SkilledMage:1b}},{Slot:103b,tag:{SkilledMage:1b}}]} run scoreboard players set $MageBeam Temporary 6
	execute if data entity @s {Inventory:[{Slot:100b,tag:{OverLordMage:1b}},{Slot:101b,tag:{OverLordMage:1b}},{Slot:102b,tag:{OverLordMage:1b}},{Slot:103b,tag:{OverLordMage:1b}}]} run scoreboard players set $MageBeam Temporary 2
# 計算
	scoreboard players operation $Majika.Max.Copy Temporary /= $MageBeam Temporary
	scoreboard players operation $Majika.Max.Copy Temporary /= $MageBeam Temporary
# メイジローブを着ていたら、攻撃力に追加
	execute if score $MageBeam Temporary matches 1.. run scoreboard players operation $Attack.Copy Temporary *= $Majika.Max.Copy Temporary
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Majika.Max.Copy
	scoreboard players reset $MageBeam
# 
#> ScoreHolder
#@private
 #declare score_holder $Majika.Max.Copy
 #declare score_holder $MageBeam
