# TES-Skyrim Datapack
We're creating Skyrim Datapack 
We will release before Tes VI appears We gonna upload this datapack
Anyone wanna create Constant datapack together?


# 制作者コメント
・Entity→PlayerとPlayer→Entityのダメージ検知として[TheSkyBlock](https://github.com/TheSkyBlock)のシステムを使わせていただいています。


・MOBのステータスの変え方(召喚時)
	基本的にMOBの頭のアイテムにデータを入れて召喚することによって変更できます。
	・防具
		・体力→Health(int)
		・マジカ→Magica(int)
	・武器
		・攻撃力→Attack(int)
	Template

・ health=(health*((((health*((防御力+100)/100))-攻撃力)*100)/health))/100
