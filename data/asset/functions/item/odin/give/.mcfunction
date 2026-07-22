#> asset:item/odin/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:odin"

# Item本体
    data modify storage asset:item Item set value "tacz:modern_kinetic_gun"

# 武器タイプ
    data modify storage asset:item WeaponType set value "MainArm"

# 弾倉の中の弾数(Option)
    data modify storage asset:item AmmoCount set value 0

# 銃のID(Option)
    data modify storage asset:item GunId set value "valorant:odin"

# 射撃モード(Option)
    data modify storage asset:item FireMode set value "AUTO"

# 弾倉の中に弾が入ってるか(Option)
    data modify storage asset:item BulletInBarrel set value true

# その他のNBT(Option)
    data modify storage asset:item OtherTags.display set value {Name:'{"text":""}'}
    data modify storage asset:item OtherTags.GunDamage set value 8.7

# アイテム入手
    function asset:item/common/give
