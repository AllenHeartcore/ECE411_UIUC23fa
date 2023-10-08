memio.s:

.section .text
.global _start

_start:
    lw x2, block1
    lw x3, block2
    lw x4, block3
    lw x5, block4
    la x1, block5
    sw x2, 0(x1)    # evict block1
    lw x3, block2+4
    lw x4, block3+4
    lw x5, block4+4
    lw x1, block1+4 # evict block5
    lw x6, block5

halt:
    j halt

.section .data

block0:
    .word 0xEAC9F3D0 # バンドリ
    .word 0x73277449 # It's
    .word 0x4F47794D # MyGO
    .word 0x21212121 # !!!!
    .word 0x6754447E # まいごで
    .word 0x81595982 # もすすめ
    .word 0x677E9AD8 # 高松
    .word 0x71C83000 # 　燈

    .org  0x200
block1:
    .word 0x65E95343 # 千早
    .word 0x97F3611B # 愛音
    .word 0x30008981 # 要　
    .word 0x5948697D # 楽奈
    .word 0x5D0E9577 # 長崎
    .word 0x3088305D # そよ
    .word 0x540D690E # 椎名
    .word 0x5E0C7ACB # 立希

    .org  0x400
block2:
    .word 0x5D534688 # ようこそ
    .word 0x754D7641 # AvMu
    .word 0x6163696A # jica
    .word 0xABB9DE6E # のマスカ
    .word 0x78C9FCEC # レードへ
    .word 0x89D24E09 # 三角
    .word 0x83EF521D # 初華
    .word 0x844982E5 # 若葉

    .org  0x600
block3:
    .word 0x77663000 # 　睦
    .word 0x5E61516B # 八幡
    .word 0x92346D77 # 海鈴
    .word 0x59297950 # 祐天
    .word 0x306B5BFA # 寺に
    .word 0x30803083 # ゃむ
    .word 0x5DDD8C4A # 豊川
    .word 0x5B507965 # 祥子

    .org  0x800
block4:
    .word 0x6A938184 # やめんな
    .word 0xFF63FC88 # よーっ！
    .word 0x751F4E00 # 一生
    .word 0x57C9F3D0 # バンドし
    .word 0x8B8C4F66 # てくれる
    .word 0x79C1FF1F # ？私
    .word 0x6A894401 # 、いらな
    .word 0x87576744 # いでしょ

    .org  0xA00
block5:
    .word 0x8C57824A # おもしれ
    .word 0x597330FC # ー女
    .word 0x0067936A # なんで　
    .word 0x65E56625 # 春日
    .word 0x63845F71 # 影やっ
    .word 0x20496E5F # たの⁉
    .word 0x8B8F4F1D # 伝わる
    .word 0x6D444468 # といいね

    .org  0xC00
block6:
    .word 0x60AA6700 # 最悪
    .word 0x4644465D # そういう
    .word 0x4D597D6E # の好き
    .word 0x545F6A42 # あなたご
    .word 0x520681EA # 自分
    .word 0x0068536E # のこと　
    .word 0x678A4B70 # ばかりで
    .word 0x026D6E59 # すのね。

    .org  0xE00
block7:
    .word 0x306F79C1 # 私は
    .word 0x20262026 # ……
    .word 0x01C9F3D0 # バンド、
    .word 0x4457697D # 楽しい
    .word 0x601D6663 # って思
    .word 0x68535F63 # ったこと
    .word 0x45EA6E00 # 一度
    .word 0x02446A82 # もない。

    .org  0x1000
block8:
    .word 0x520681EA # 自分
    .word 0xC9F3D06E # のバンド
    .word 0x6768536E # のことで
    .word 0x8B8160A9 # 悩める
    .word 0x5C114C6E # のが少
    .word 0x7E7FA857 # し羨ま
    .word 0x42824F57 # しくもあ
    .word 0x02597E8A # ります。
