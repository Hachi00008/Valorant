#> spike:place/reset
#
# スパイク処理のキャンセル
#
# @within function spike:

function spike:place/reset

# ログ
tellraw @s [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクの設置をキャンセルしました。","color": "white"}]

