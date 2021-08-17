#> player:player_hurt_entity/damage
#
# ダメージを与える
#
# @within function player:player_hurt_entity/filters/0

# 最大体力と防御力をコピー
	scoreboard players operation $Health.Max.Copy Temporary = @s Health.Max
	scoreboard players operation $Defense.Copy Temporary = @s Defense
# 体力をコピー
	execute if entity @a[tag=This,distance=..0.001] run scoreboard players operation $Health.Copy Temporary = @s Health
# メイジビームを持っていたら
	execute as @a[tag=This,distance=..0.0001] if data entity @s SelectedItem.tag.MageBeam run function player:player_hurt_entity/magebeam
# 計算
	scoreboard players add $Defense.Copy Temporary 100
	scoreboard players operation $Defense.Copy Temporary /= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary *= $Defense.Copy Temporary
	scoreboard players operation $Health.Max.Copy1 Temporary = $Health.Max.Copy Temporary
	scoreboard players operation $Health.Max.Copy Temporary -= @a[tag=This,distance=..0.001] Attack
	scoreboard players operation $Health.Max.Copy Temporary *= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary /= $Health.Max.Copy1 Temporary
# 体力を減らす
	scoreboard players operation @s Health *= $Health.Max.Copy Temporary
	scoreboard players operation @s Health /= $100 Constant
# 死
	execute if entity @s[scores={Health=..0}] at @s run function player:player_hurt_entity/death
# ダメージを伝える
	execute if entity @a[tag=This,distance=..0.001] run function player:player_hurt_entity/display.damage
# 回復
	execute if entity @s[type=#entity:undead,scores={Health=1..}] run effect give @s minecraft:instant_damage 1 250 true
	execute if entity @s[type=!#entity:undead,scores={Health=1..}] run effect give @s minecraft:instant_health 1 250 true
# ウエポンチャージ
	execute if data entity @s SelectedItem.tag.WeaponCharge store result score @s Weapon.Charge run data get entity @s SelectedItem.tag.WeaponCharge
	execute unless data entity @s SelectedItem.tag.WeaponCharge run scoreboard players set @s Weapon.Charge 20
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Health.Max.Copy
	scoreboard players reset $Health.Max.Copy1
	scoreboard players reset $Defense.Copy
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Max.Copy
 #declare score_holder $Health.Max.Copy1
 #declare score_holder $Defense.Copy
# 
#> ScoreHolder(他の場所でも使われる)
#@private
#@within function player:player_hurt_entity/display.damage
 #declare score_holder $Health.Copy
# 
#> ScoreHolder(他の場所でも使われる)
#@private
#@within function player:player_hurt_entity/magebeam
 #declare score_holder $Attack.Copy
