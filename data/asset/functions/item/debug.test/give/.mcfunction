#> asset:item/debug.test/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item Argment.ID set value "valorant:ghost"

# Item本体
    data modify storage asset:item Argment.Item set value "tacz:modern_kinetic_gun"

# RawName
    data modify storage asset:item Argment.RawName set value {"text":"Debug Item","color":"dark_purple","italic":false}

# 説明文(Option)
    # ヘッダー
        #data modify storage asset:item HeaderLore set value
    # 本文
        data modify storage asset:item Lore set value [{"text":"このアイテムを入手していればアイテム入手APIが正常に動作しています。","color":"gray","italic":false}]
    # フッター
        #data modify storage asset:item FooterLore set value

# アイテムの種類
    data modify storage asset:item Type set value gun

# アイテム入手
    function asset:item/common/give
