English version : [here](pdf/manipulation221022sat.pdf) <- Not a tranlation of this page. Another explanations focusing on how to use the newly created command. 

「分母逆算器」であるコマンドラインプログラムdenomfindおよび関連コマンドラインプログラムをこのレポジトリは提供する。

いろいろな報告書やデータや論文を読んでいると、割合の数値がいくつか間違っていたり、でたらめなこともある。
結局なかなか数値記載ミスが全く無いことは、機械的な仕組みが無い限りは、あまり多くは無いかも知れない。
この問題の対処のために、その割合の近似値がいくつかあれば、それらから逆算して、母数のサイズ(分母の値)の候補を網羅的に求めるようにしたプログラムを作成した。

単純な例としては、0.143という数が１つあれば、1/7に近いから7という数を復元する。その上で、7の倍数も逐次出力するし、7だけ出力する選択も用意している。
分母が7の倍数の場合だけでなく、32/223=0.14398.. に対応した223などの候補も出す。
0.50と0.33の組み合わせが与えられたら、それら複数の割合に対しても計算をする。
この場合は6の倍数の分母の場合が出てくるし、40や46や52など、0.50や0.33を近似値として分数に持つ共通な分母を持つ場合を出力する。
そのような情報を大まかに3通りの方法で分かりやすく表示する(分数の式、分子のみ、そして、3番目に、分数の式の値の近似値そのもの、または、誤差である)。

世の中には四捨五入や切り捨てや切り上げの他にも、偶数丸め(銀行で使うらしい)や奇数丸めがある。
他には0.2345→0.235→0.24のような四捨五入を2回してしまったことによるずれもある(0.2345なら0.23になるはずが、四捨五入を別々の人が行うことで、0.24になってしまう不一致が生じる)。
いろんな場合にも対応できるように、denomfind は オプションスイッチを多数用意してある。
さらには、分母が同じである割合の数値が部分的に間違っていた場合にそれを訂正できるように、間違いの許容個数を指定して、分母の値を探索できるようにした機能も実装している。


下野寿之 bin4tsv@gmail.com

![スライド](pageimg/m001.png)
![スライド](pageimg/m002.png)
![スライド](pageimg/m003.png)
![スライド](pageimg/m004.png)
![スライド](pageimg/m005.png)
![スライド](pageimg/m006.png)
![スライド](pageimg/m007.png)
![スライド](pageimg/m008.png)
![スライド](pageimg/m009.png)

![スライド](pageimg/m010.png)
![スライド](pageimg/m011.png)
![スライド](pageimg/m012.png)
![スライド](pageimg/m013.png)
![スライド](pageimg/m014.png)
![スライド](pageimg/m015.png)
![スライド](pageimg/m016.png)
![スライド](pageimg/m017.png)
![スライド](pageimg/m018.png)
![スライド](pageimg/m019.png)

![スライド](pageimg/m020.png)
![スライド](pageimg/m021.png)
![スライド](pageimg/m022.png)
![スライド](pageimg/m023.png)
![スライド](pageimg/m024.png)
![スライド](pageimg/m025.png)
![スライド](pageimg/m026.png)
![スライド](pageimg/m027.png)
![スライド](pageimg/m028.png)
![スライド](pageimg/m029.png)

![スライド](pageimg/m030.png)
![スライド](pageimg/m031.png)
![スライド](pageimg/m032.png)
![スライド](pageimg/m033.png)
![スライド](pageimg/m034.png)
![スライド](pageimg/m035.png)
![スライド](pageimg/m036.png)
![スライド](pageimg/m037.png)
![スライド](pageimg/m038.png)
![スライド](pageimg/m039.png)

![スライド](pageimg/m040.png)
![スライド](pageimg/m041.png)
![スライド](pageimg/m042.png)
![スライド](pageimg/m043.png)
![スライド](pageimg/m044.png)
![スライド](pageimg/m045.png)
![スライド](pageimg/m046.png)
![スライド](pageimg/m047.png)
![スライド](pageimg/m048.png)
![スライド](pageimg/m049.png)

![スライド](pageimg/m050.png)
![スライド](pageimg/m051.png)
![スライド](pageimg/m052.png)
![スライド](pageimg/m053.png)
![スライド](pageimg/m054.png)
![スライド](pageimg/m055.png)
![スライド](pageimg/m056.png)
![スライド](pageimg/m057.png)
![スライド](pageimg/m058.png)
![スライド](pageimg/m059.png)

![スライド](pageimg/m060.png)
![スライド](pageimg/m061.png)
![スライド](pageimg/m062.png)
![スライド](pageimg/m063.png)
![スライド](pageimg/m064.png)
![スライド](pageimg/m065.png)
![スライド](pageimg/m066.png)
![スライド](pageimg/m067.png)
![スライド](pageimg/m068.png)
![スライド](pageimg/m069.png)

![スライド](pageimg/m070.png)
![スライド](pageimg/m071.png)
![スライド](pageimg/m072.png)
![スライド](pageimg/m073.png)
![スライド](pageimg/m074.png)
![スライド](pageimg/m075.png)
