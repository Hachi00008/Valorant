#> player:hurt/death
#
# 死んだ時の処理
#
# @within function player:hurt/

# 殺した人の武器のダメージを取得
    execute store result score @s AttackerWeaponDamage on attacker run data get entity @s SelectedItem.tag.GunDamage

    scoreboard players operation @s TakenDamage /= #10 Constant

# メッセージ
    execute if score @s AttackerWeaponDamage = @s TakenDamage on attacker run title @s actionbar [{"text": "\uE000","font": "ui","color": "white"}]
    execute unless score @s AttackerWeaponDamage = @s TakenDamage on attacker run title @s actionbar [{"text": "\uE001","font": "ui","color": "white"}]

# リセット
    scoreboard players set @s TakenDamage 0