#> spike:load
#
# スパイク処理に必要な物体の作成
#
# @within function core:load/once

# スパイク設置のゲージはbossbarを採用
bossbar add valorant:spike "スパイクを設置中..."
bossbar set valorant:spike color yellow
bossbar set valorant:spike visible false

# 念のため、sneak_timeをスパイク個別に作成
# 勝手に増えないようにdummyで設定
scoreboard objectives add Spike.Sneak dummy

scoreboard objectives add Spike dummy
scoreboard players set $Max Spike 80
scoreboard players set $DefuseHalf Spike 70
scoreboard players set $DefuseMax Spike 140
