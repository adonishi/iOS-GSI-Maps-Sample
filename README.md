# 地理院地図 iOS サンプルコード

GSI Maps iOS sample code (formally Denshi Kokudo v4 sample code for iOS. iOS 6 or up)

based on OpenStreetMap "OSM in MapKit" code.
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

and "Lets do it World" code.
https://github.com/nutiteq/ldiw-iphone

# 概要
iOS内蔵のMapKitにオーバーレイする形で、地理院地図のタイル画像を表示します。
(旧：電子国土 v4 iOS サンプルコード）
MapKitの機能がそのまま使用できるので、場所表示ピンやルートなどの機能も同様に使用する事ができます。

オーバーレイ方法は、OpenStreetMap Wiki にある "OSM in MapKit" のコードをベースとして使用しています。
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

そして、そのコードの元になる"Lets do it World"のコードを使用しました。
https://github.com/nutiteq/ldiw-iphone

アプリケーションは、iOS6以降のOSで動作します。

# 許諾 (OBSOLETE!)
2013年10/30の地理院地図の公開に伴い、許諾は必要なくなりました！
ただし、「測量法第29条及び第30条により承認申請が必要とされている様態」の場合等の場合には許諾が必要な場合が有るそうです。
詳しくは、、、 http://portal.cyberjapan.jp/help/termsofuse.html を参照してください。

# このコードの使用方法
1. TileOverlayフォルダ内のコードを使用するプロジェクトに追加。
2. プロジェクト内のMKMapViewを管理するViewControllerから、TileOverlayをMKMapViewにaddOverlayする。
```
overlay = [[TileOverlay alloc] initOverlay];
[map addOverlay:overlay];
```

# 既知の問題
* オーバーレイとしてタイル画像を表示するので、タイル画像の取得が遅い場合や、タイルが無い場合等にはapple版の地図が表示されてしまう。

# このコードのライセンス
ベースに使用した、"Lets do it World"のライセンスと同様、FreeBSD Licenseとします。
および、Appleのコピーライトがある部分はそれに従います。（Appleのサンプルコード起源とおもわれるコピーライトがあり、それには無保証の記述などがあります。）

# License
"FreeBSD License"

Copyright 2013 GSI_Maps. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY GSI_Maps ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GSI_Maps OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the authors and should not be interpreted as representing official policies, either expressed or implied, of GSI_Maps.
