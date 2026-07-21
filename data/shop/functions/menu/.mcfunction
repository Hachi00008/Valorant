#> shop:menu/
#
# インベントリショップ
#
# @within function player:tick/post

# 設置するアイテムの設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item set value [{Slot:1b,id:"tacz:modern_kinetic_gun",Count:1b,tag:{HasBulletInBarrel:1b,GunFireMode:"SEMI",GunId:"valorant:sheriff",GunCurrentAmmoCount:0,ShopItem:1b,display:{Lore:['[{"text":"購入可能(クリックして購入)","color":"green","bold":true,"italic":false}]']},RequireCredit:800,Buyed:false,CanBuy:true}}]

# クリック不可の条件+変更
    # シェリフ
        execute if entity @s[tag=buyed_sheriff] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item[0].tag merge value {display:{Lore:['[{"text":"購入済み","color":"gold","bold":true,"italic":false}]']},Buyed:true,CanBuy:false}
        execute unless entity @s[tag=buyed_sheriff] store result score @s Req_Credit run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item[0].tag.RequireCredit
        execute unless entity @s[tag=buyed_sheriff] unless score @s Credit >= @s Req_Credit run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item[0].tag merge value {display:{Lore:['[{"text":"購入不可","color":"red","bold":true,"italic":false}]']},Buyed:false,CanBuy:false}
        scoreboard players reset @s Req_Credit
        
# アイテム設置
    execute in world:system_area run data modify block 0 0 0 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    execute in world:system_area run loot replace entity @s inventory.0 mine 0 0 0 debug_stick
    item replace entity @s inventory.8 with emerald{display:{Name:'[{"text": "Credit: ","color": "green","bold":true,"italic": false},{"score": {"name": "@s","objective": "Credit"},"color": "white","italic": false}]'}}
    
# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    execute in world:system_area run data modify block 0 0 0 Items set value []