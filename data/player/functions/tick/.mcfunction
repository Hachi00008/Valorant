#> player:tick/
#
# プレイヤーTick処理
#
# @within function core:tick/

# 死亡時タグ付与
    execute if score @s DeathEvent matches 1.. run tag @s add Dead

# イベントハンドラー
    execute if score @s FirstJoinEvent matches 1 run function player:handler/first_join
    execute if score @s RejoinEvent matches 1.. run function player:handler/rejoin
    execute if score @s RespawnEvent matches 1 run function player:handler/respawn
    execute if entity @s[tag=InRespawnEvent] if score @s RespawnEvent matches 80.. run function player:handler/respawn_delay
    execute if predicate lib:is_sneaking if score @s SneakEvent matches 1.. run function player:handler/sneak

# Playerトリガー処理
    function player_manager:trigger/tick/

# ID割り振り
    execute unless score @s PlayerID matches 0.. run function player:provide_player_id