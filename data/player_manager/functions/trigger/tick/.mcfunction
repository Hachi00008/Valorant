#> player_manager:trigger/tick/
#
# PlayerトリガーのTick処理
#
# @within function player:tick/

# スニーク時
    execute if entity @s[tag=EventHandler.Sneak] run function player_manager:trigger/sneak/

# リセット
    tag @s remove EventHandler.Sneak