#ExchangeSwords
execute as @a if data entity @s {SelectedItem:{id:"minecraft:wooden_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with wooden_sword{ATK:3,WeaponCharge:10,Damage:1,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:stone_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with stone_sword{ATK:5,WeaponCharge:10,Damage:131,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:iron_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with iron_sword{ATK:7,WeaponCharge:10,Damage:1,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:golden_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with golden_sword{ATK:10,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Dwarven Sword","itaric":"true"}'}}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:diamond_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with diamond_sword{ATK:12,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Glass Sword","itaric":"true"}'}}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:netherite_sword",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with netherite_sword{ATK:13,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Ebony Sword","itaric":"true"}'}}

#ExchangeAxes
execute as @a if data entity @s {SelectedItem:{id:"minecraft:wooden_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with wooden_axe{ATK:3,WeaponCharge:10,Damage:1,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:stone_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with stone_axe{ATK:5,WeaponCharge:10,Damage:131,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:iron_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with iron_axe{ATK:7,WeaponCharge:10,Damage:1,Unbreakable:1}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:golden_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with golden_axe{ATK:10,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Dwarven War Axe","itaric":"true"}'}}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:diamond_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with diamond_axe{ATK:12,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Glass War Axe","itaric":"true"}'}}
execute as @a if data entity @s {SelectedItem:{id:"minecraft:netherite_axe",tag:{Damage:0}}} run item replace entity @s weapon.mainhand with netherite_axe{ATK:15,WeaponCharge:10,Damage:1,Unbreakable:1,display:{Name:'{"text":"Ebony War Axe","itaric":"true"}'}}