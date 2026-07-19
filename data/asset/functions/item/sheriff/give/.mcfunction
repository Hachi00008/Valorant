#> asset:item/sheriff/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:sheriff"

# Item本体
    data modify storage asset:item Item set value "tacz:modern_kinetic_gun"

# 弾倉の中の弾数
    data modify storage asset:item AmmoCount set value 6

# 銃のID
    data modify storage asset:item GunId set value "valorant:sheriff"

# 射撃モード
    data modify storage asset:item FireMode set value "SEMI"

# 弾倉の中に弾が入ってるか
    data modify storage asset:item BulletInBarrel set value true

# その他のNBT(Option)
    #data modify storage asset:item OtherTags set value {}

# アイテム入手
    function asset:item/common/give
