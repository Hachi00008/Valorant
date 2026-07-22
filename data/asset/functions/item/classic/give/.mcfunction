#> asset:item/classic/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:classic"

# Item本体
    data modify storage asset:item Item set value "tacz:modern_kinetic_gun"

# 武器タイプ
    data modify storage asset:item WeaponType set value "SideArm"

# 弾倉の中の弾数(Option)
    data modify storage asset:item AmmoCount set value 0

# 銃のID(Option)
    data modify storage asset:item GunId set value "valorant:classic"

# 射撃モード(Option)
    data modify storage asset:item FireMode set value "SEMI"

# 弾倉の中に弾が入ってるか(Option)
    data modify storage asset:item BulletInBarrel set value 1b

# その他のNBT(Option)
    data modify storage asset:item OtherTags.display set value {Name:'{"text":""}'}
    data modify storage asset:item OtherTags.GunDamage set value 5.5d

# アイテム入手
    function asset:item/common/give