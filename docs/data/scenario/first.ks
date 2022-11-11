*start

[title name="じゃんけん"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

「じゃんけん」[l][r]

何を出す？[l][r]

[iscript]
tf.rand = Math.random()
[endscript]


[link target=*tag_gu] →グー [endlink][r]
[link target=*tag_tyoki] →チョキ [endlink][r]
[link target=*tag_pa] →パー [endlink][r]
[s]

*tag_gu

[cm]



最初はグー、じゃんけん！[l][r]
自分：ぐー！[l][r]
相手：[if exp="tf.rand < 0.33]
    [bg storage=janken_gu.png time=500]
    相手：今回はこの辺にしておこう
[elsif exp="tf.rand < 0.66]
    [bg storage=janken_choki.png time=500]
    相手：やるな！！
[else]
    [bg storage=janken_pa.png time=500]
    相手：まだまだだな！
[endif][r]

[l][cm]

[jump target=*start]

*tag_tyoki


[cm]
最初はグー、じゃんけん！[l][r]
自分：ちょき！[l][r]
相手：[if exp="tf.rand < 0.33]
    [bg storage=janken_gu.png time=500]
    相手：まだまだだな！
[elsif exp="tf.rand < 0.66]
    [bg storage=janken_choki.png time=500]
    相手：今回はこの辺にしておこう
[else]
    [bg storage=janken_pa.png time=500]
    相手：やるな！！
[endif][r]

[l][cm]

[jump target=*start]


*tag_pa

最初はグー、じゃんけん！[l][r]
自分：ぱー！[l][r]
相手：[if exp="tf.rand < 0.33]
    [bg storage=janken_gu.png time=500]
    相手：やるな！！
[elsif exp="tf.rand < 0.66]
    [bg storage=janken_choki.png time=500]
    相手：まだまだだな！
[else]
    [bg storage=janken_pa.png time=500]
    相手：今回はこの辺にしておこう
[endif][r]

[l][cm]

[jump target=*start]
