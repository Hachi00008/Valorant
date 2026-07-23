#> game_core:game_tick/draw_timer
#
# ボスバーにタイマーを描画
#
# @within
#   function game_core:game_tick/buy_phase/
#   function game_core:game_tick/battle_phase/

# 分を求めるためスコアをコピー
    scoreboard players operation $Min Timer = $Time Timer

# 秒を求めるためスコアをコピー
    scoreboard players operation $Sec Timer = $Time Timer

# 分を求める
    scoreboard players operation $Min Timer /= #1200 Constant

# 秒を求める
    scoreboard players operation $Sec Timer /= #20 Constant
    scoreboard players operation $Sec Timer %= #60 Constant

# ボスバーに表示
    execute if score $Sec Timer matches ..9 run bossbar set valorant:timer name ["",{"text": "\uE003","font": "ui"},{"translate": "space.-32","font": "space"},{"translate": "space.6","font": "space"},{"score": {"name": "$Red","objective": "GetRound"},"font": "up"},{"translate": "space.32","font": "space"},{"text":"\uE002","font":"ui"},{"translate":"space.-32","font":"space"},{"translate":"space.-16","font":"space"},{"score": {"name": "$Min","objective": "Timer"},"font": "up"},{"text": ":0","font": "up"},{"score": {"name": "$Sec","objective": "Timer"},"font": "up"},{"translate": "space.32","font": "space"},{"text": "\uE003","font": "ui"},{"translate": "space.-32","font": "space"},{"translate": "space.6","font": "space"},{"score": {"name": "$Blue","objective": "GetRound"},"font": "up"}]
    execute unless score $Sec Timer matches ..9 run bossbar set valorant:timer name ["",{"text":"\uE002","font":"ui"},{"translate":"space.-32","font":"space"},{"translate":"space.-16","font":"space"},{"score": {"name": "$Min","objective": "Timer"},"font": "up"},{"text": ":","font": "up"},{"score": {"name": "$Sec","objective": "Timer"},"font": "up"}]