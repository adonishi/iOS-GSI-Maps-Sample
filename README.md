# 電子国土 v4 iOS サンプルコード

Denshi Kokudo v4 sample code for iOS.

based on OpenStreetMap "OSM in MapKit" code.
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

and "Lets do it World" code.
https://github.com/nutiteq/ldiw-iphone

# 概要
iOS内蔵のMapKitにオーバーレイする形で、電子国土v4のタイル画像を表示する。
MapKitの機能がそのまま使用できるので、場所表示ピンやルートなどの機能も同様に使用する事ができる。

オーバーレイ方法は、OpenStreetMap Wiki にある "OSM in MapKit" のコードをベースとして使用
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

および"Lets do it World"のコードを使用した。
https://github.com/nutiteq/ldiw-iphone

# 許諾
このコードを使用して、電子国土のタイル画像をあなたのアプリケーションで表示するためには、国土地理院の許諾が必要。
詳しくは以下のページを参照。
http://portal.cyberjapan.jp/portalsite/kiyaku/kyodaku.html

参考として、このアプリケーションの許諾に使用した申請書を、shinsei.docとして置いてある。

# このコードのライセンス
ベースに使用した、"Lets do it World"のライセンスと同様、FreeBSD Licenseとする。
（Appleのコピーライトがある部分はそれに従う）

# 既知のバグ
オーバーレイとしてタイル画像を表示するので、タイル画像の取得が遅い場合や、タイルが無い場合等にはapple版の地図が表示されてしまう。

