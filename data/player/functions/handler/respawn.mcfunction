#> player:handler/respawn
#
# リスポーン時処理
#
# @within function player:tick/

# 死亡時タグ削除
    tag @s remove Dead

# リスポーンタグ付与
    tag @s add InRespawnEvent