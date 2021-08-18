# TES-Skyrim Datapack
We're creating Skyrim Datapack 
We will release before Tes VI appears We gonna upload this datapack
Anyone wanna create a datapack together?

# デバッグメッセージ
・アイテム
	防具には「Armor:1b」を、武器には「Weapon:1b」を付ける
	防具には"Health,Majika,Defense"のタグが、武器には"Health,Majika,Attack"のタグが付けられる

	give @s minecraft:leather_boots{
		Armor:1b,
		Status:{
			Health:0,
			Majika:0,
			Defense:0
		}
	}

	give @s minecraft:stone_sword{
		Weapon:1b,
		Status:{
			Health:0,
			Majika:0,
			Attack:0
		}
	}
