#> player:provide_player_id
#
# プレイヤーID割り当て
#
# @within function player:tick/

#> PlayerID Index
# @private
#declare score_holder $PlayerIDIndex

# プレイヤーID
    scoreboard players add $PlayerIDIndex Global 1
    scoreboard players operation @s PlayerID = $PlayerIDIndex Global