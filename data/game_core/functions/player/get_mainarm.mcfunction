#> game_core:player/get_mainarm
#
# サイドアームの取得処理
#
# @within function game_core:player/get_item

# アイテムクリア
    execute unless entity @s[tag=NewGetItem] run clear @s tacz:modern_kinetic_gun{WeaponType:"MainArm"}

# アイテム入手
    execute in world:system_area run item replace entity @s hotbar.2 from block 0 0 0 container.0

# リセット
    tag @s add NewGetItem