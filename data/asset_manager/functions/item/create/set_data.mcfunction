#> asset_manager:item/create/set_data
#
# アイテムデータ設定
#
# @within function asset:item/common/give

# 移行
    data modify storage asset:item BaseItem set from storage asset:item Item

# 初期化
    data modify storage asset:item Item set value {}

# 個数初期化
    data modify storage asset:item Item.Count set value 1b

# アイテムバージョン
    data modify storage asset:item Item.tag.Valorant.Version set from storage global: FrameworkVersion

# UUID設定
    scoreboard players add $ItemIndex Global 1
    execute store result storage asset:item Item.tag.Valorant.UUID int 1 run scoreboard players get $ItemIndex Global

# 代入
    data modify storage asset:item Item.id set from storage asset:item BaseItem
    data modify storage asset:item Item.tag.Valorant.RawName set from storage asset:item RawName
    data modify storage asset:item Item.tag.Valorant.ID set from storage asset:item ID

# その他のタグ
    data modify storage asset:item Item.tag merge from storage asset:item OtherTags

# データ適用
    execute in world:system_area run item replace block 0 0 0 container.0 with stone
    execute in world:system_area run data modify block 0 0 0 Items[0] set from storage asset:item Item

# リセット
    data remove storage asset:item BaseItem