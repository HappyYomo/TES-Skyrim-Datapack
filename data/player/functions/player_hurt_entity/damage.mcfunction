#> player:player_hurt_entity/damage
#
# ダメージを与える
#
# @within function player:player_hurt_entity/filters/0

# プレイヤーの攻撃力
	scoreboard players operation $Attack Temporary = @a[tag=This,distance=..0.001] Attack
# Entityの体力と防御力
	scoreboard players operation $Health.Max.Copy Temporary = @s Health.Max
	scoreboard players operation $Defense.Copy Temporary = @s Defense
	scoreboard players operation $Health.Copy Temporary = @s Health
# プレイヤーがメイジビームを持っていたら
	execute as @a[tag=This,distance=..0.001] if data entity @s SelectedItem.tag.MageBeam run function player:player_hurt_entity/magebeam
# 体力を減らす
	scoreboard players add $Defense.Copy Temporary 100
	scoreboard players operation $Defense.Copy Temporary /= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary *= $Defense.Copy Temporary
	scoreboard players operation $Health.Max.Copy Temporary -= $Attack Temporary
	scoreboard players operation $Health.Max.Copy Temporary *= $100 Constant
	scoreboard players operation $Health.Max.Copy Temporary /= @s Health.Max
	scoreboard players operation @s Health *= $Health.Max.Copy Temporary
	scoreboard players operation @s Health /= $100 Constant
# 与えたダメージを伝える
	execute if entity @a[tag=This,tag=ShowDealt,distance=..0.001] run scoreboard players operation $Health.Copy Temporary -= @s Health
	execute as @a[tag=This,tag=ShowDealt,distance=..0.001] run tellraw @s [{"text":"Damage: "},{"score":{"name":"$Health.Copy","objective":"Temporary"},"color":"red"}]
# ウエポンチャージ
	execute as @a[tag=This,distance=..0.001] if data entity @s SelectedItem.tag.WeaponCharge store success score $WeaponCharge Temporary store result score @s Weapon.Charge run data get entity @s SelectedItem.tag.WeaponCharge
	execute as @a[tag=This,distance=..0.001] unless score $WeaponCharge Temporary matches 1 run scoreboard players set @s Weapon.Charge 10
# 回復
	execute if entity @s[type=#entity:undead] run effect give @s minecraft:instant_damage 1 250 true
	execute if entity @s[type=!#entity:undead] run effect give @s minecraft:instant_health 1 250 true
# 一時使用ScoreHolderをリセット
	scoreboard players reset $Attack
	scoreboard players reset $Health.Max.Copy
	scoreboard players reset $Defense.Copy
	scoreboard players reset $WeaponCharge
# 
#> ScoreHolder
#@private
 #declare score_holder $Health.Copy
 #declare score_holder $Health.Max.Copy
 #declare score_holder $Defense.Copy
 #declare score_holder $Attack
 #declare score_holder $WeaponCharge
