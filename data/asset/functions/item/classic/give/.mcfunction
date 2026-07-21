#> asset:item/classic/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:classic"

# Item本体
    data modify storage asset:item Item set value "tacz:modern_kinetic_gun"

# 弾倉の中の弾数(Option)
    data modify storage asset:item AmmoCount set value 12

# 銃のID(Option)
    data modify storage asset:item GunId set value "valorant:classic"

# 射撃モード(Option)
    data modify storage asset:item FireMode set value "SEMI"

# 弾倉の中に弾が入ってるか(Option)
    data modify storage asset:item BulletInBarrel set value true

# その他のNBT(Option)
    data modify storage asset:item OtherTags set value {display:{Name:'{"text":""}'},GunDamage:5.5}

# アイテム入手
    function asset:item/common/give
