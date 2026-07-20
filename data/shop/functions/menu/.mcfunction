#> shop:menu/
#
# インベントリショップ
#
# @within function player:tick/post

# アイテムの配置
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item set value [{Slot:1b,id:"tacz:modern_kinetic_gun",Count:1b,tag:{HasBulletInBarrel:1b,GunFireMode:"SEMI",GunId:"valorant:sheriff",GunCurrentAmmoCount:0,ShopItem:1b,display:{Lore:['[{"text":"購入可能(クリックして購入)","color":"green","bold":true,"italic":false}]']},RequireCredit:100}}]
    execute if entity @s[tag=test] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item[0].tag.display.Lore set value ['[{"text":"購入不可","color":"red","bold":true,"italic":false}]']
    execute in world:system_area run data modify block 0 0 0 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    execute in world:system_area run loot replace entity @s inventory.0 mine 0 0 0 debug_stick

# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    execute in world:system_area run data modify block 0 0 0 Items set value []