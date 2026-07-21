#> asset:item/carambit/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:carambit"

# Item本体
    data modify storage asset:item Item set value "lrtactical:melee"

# 弾倉の中の弾数(Option)
    #data modify storage asset:item AmmoCount set value 

# 銃のID(Option)
    #data modify storage asset:item GunId set value ""

# 射撃モード(Option)
    #data modify storage asset:item FireMode set value ""

# 弾倉の中に弾が入ってるか(Option)
    #data modify storage asset:item BulletInBarrel set value true

# その他のNBT(Option)
    data modify storage asset:item OtherTags set value {MeleeWeaponId:"lrtactical:karambit",GunDamage:7}

# アイテム入手
    function asset:item/common/give