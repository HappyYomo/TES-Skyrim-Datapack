#システム
function command:summon/player_time

#削除
execute as @e[tag=delete] at @s run function command:summon/skill/delete

#マインハンド(魔法)
execute if entity @e[tag=enemy,nbt={HandItems:[{tag:{EnemyFireRod:1b}},{}]}] run function command:summon/skill/firerod
execute if entity @e[tag=enemy,nbt={HandItems:[{tag:{EnemyFireRod2:1b}},{}]}] run function command:summon/skill/firerod2
execute if entity @e[tag=enemy,nbt={HandItems:[{tag:{EnemyIceRod:1b}},{}]}] run function command:summon/skill/icerod

#オフハンド(魔法)
execute if entity @e[tag=enemy,nbt={HandItems:[{},{tag:{EnemyWindBook:1b}}]}] run function command:summon/skill/windbook
execute if entity @e[tag=enemy,nbt={HandItems:[{},{tag:{EnemyTeleportBook:1b}}]}] run function command:summon/skill/teleportbook

#頭(魔法)
execute if entity @e[tag=enemy,nbt={ArmorItems:[{},{},{},{tag:{EnemyBloodAuraHead:1b}}]}] run function command:summon/skill/bloodaurahead
execute if entity @e[tag=enemy,nbt={ArmorItems:[{},{},{},{tag:{EnemyEnderHead:1b}}]}] run function command:summon/skill/enderhead
execute if entity @e[tag=enemy,nbt={ArmorItems:[{},{},{},{tag:{EnemyCreeperHead:1b}}]}] run function command:summon/skill/creeperhead

#胸(魔法)
execute if entity @e[tag=enemy,nbt={ArmorItems:[{},{},{tag:{EnemySwordRainChest:1b}},{}]}] run function command:summon/skill/swordrainchest

#ズボン(魔法)
execute if entity @e[tag=enemy,nbt={ArmorItems:[{},{tag:{EnemySurgeLegs:1b}},{},{}]}] run function command:summon/skill/surgelegs

#靴(魔法)
execute if entity @e[tag=enemy,nbt={ArmorItems:[{tag:{EnemyExplosionBoots:1b}},{},{},{}]}] run function command:summon/skill/explosionboots

#システム2
execute if entity @e[type=zombie] run function command:summon/zombie/zombie
execute if entity @e[type=skeleton] run function command:summon/skeleton/skeleton
execute if entity @e[type=spider] run function command:summon/spider/spider
execute if entity @e[type=spider] run function command:summon/cave_spider/cave_spider
execute if entity @e[type=phantom] run function command:summon/phantom/phantom
execute if entity @e[type=creeper] run function command:summon/creeper/creeper