#> asset:item/sheriff/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:sheriff"

# Item本体
    data modify storage asset:item Item set value "tacz:modern_kinetic_gun"

# アイテムの種類
    data modify storage asset:item Type set value gun

# その他のNBT(Option)
    data modify storage asset:item OtherTags set value {HasBulletInBarrel:true,GunFireMode:"SEMI",GunId:"valorant:sheriff",GunCurrentAmmoCount:6}

# アイテム入手
    function asset:item/common/give
