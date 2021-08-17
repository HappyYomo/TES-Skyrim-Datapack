#> entity:init
#
# Entityの初期化
#
# @within function command:tick

# ステータス
	## 体力
		execute unless data entity @s ArmorItems[3].tag.Health store result score @s Health store result score @s Health.Max run data get entity @s Health 5
		execute if data entity @s ArmorItems[3].tag.Health store result score @s Health store result score @s Health.Max run data get entity @s ArmorItems[3].tag.Health
	## 攻撃力
		execute if data entity @s HandItems[0].tag.Attack store result score @s Attack run data get entity @s HandItems[0].tag.Attack
		execute unless data entity @s HandItems[0].tag.Attack run scoreboard players set @s Attack 1

### ここから下は「TheSkyBlock」のシステムを使わせてもらっています
# グローバルインデックス増加
    scoreboard players add $FlagIndex Global 1
    scoreboard players operation $FlagIndex Global %= $2^15 Constant
    execute if score $FlagIndex Global matches 0 run scoreboard players add $FlagIndex Global 1
# Clone
    scoreboard players operation $CloneFlagIndex Temporary = $FlagIndex Global
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex Temporary *= $2^16 Constant
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag0.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag0.1
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag1.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag1.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag2.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag2.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag3.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag3.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag4.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag4.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag5.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag5.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag6.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag6.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag7.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag7.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag8.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag8.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag9.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag9.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag10.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag10.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag11.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag11.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag12.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag12.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag13.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag13.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag14.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag14.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Constant
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag15.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag15.1
# リセット
    scoreboard players reset $CloneFlagIndex Temporary
### 

# 初期化完了
	tag @s add Entity
# 
#> ScoreHolder
#@private
 #declare score_holder $FlagIndex
 #declare score_holder $CloneFlagIndex
# 
#> Tag
#@private
#@within advancement player:*
#@within function player:entity_hurt_player/filters/*
 #declare tag FindFlag0.0
 #declare tag FindFlag0.1
 #declare tag FindFlag1.0
 #declare tag FindFlag1.1
 #declare tag FindFlag2.0
 #declare tag FindFlag2.1
 #declare tag FindFlag3.0
 #declare tag FindFlag3.1
 #declare tag FindFlag4.0
 #declare tag FindFlag4.1
 #declare tag FindFlag5.0
 #declare tag FindFlag5.1
 #declare tag FindFlag6.0
 #declare tag FindFlag6.1
 #declare tag FindFlag7.0
 #declare tag FindFlag7.1
 #declare tag FindFlag8.0
 #declare tag FindFlag8.1
 #declare tag FindFlag9.0
 #declare tag FindFlag9.1
 #declare tag FindFlag10.0
 #declare tag FindFlag10.1
 #declare tag FindFlag11.0
 #declare tag FindFlag11.1
 #declare tag FindFlag12.0
 #declare tag FindFlag12.1
 #declare tag FindFlag13.0
 #declare tag FindFlag13.1
 #declare tag FindFlag14.0
 #declare tag FindFlag14.1
 #declare tag FindFlag15.0
 #declare tag FindFlag15.1
