# 電子国土 v4 iOS サンプルコード

Denshi Kokudo v4 sample code for iOS.

based on OpenStreetMap "OSM in MapKit" code.
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

and "Lets do it World" code.
https://github.com/nutiteq/ldiw-iphone

# 概要
iOS内蔵のMapKitにオーバーレイする形で、電子国土v4のタイル画像を表示します。
MapKitの機能がそのまま使用できるので、場所表示ピンやルートなどの機能も同様に使用する事ができます。

オーバーレイ方法は、OpenStreetMap Wiki にある "OSM in MapKit" のコードをベースとして使用しています。
http://wiki.openstreetmap.org/wiki/OSM_in_MapKit

そして、そのコードの元になる"Lets do it World"のコードを使用しました。
https://github.com/nutiteq/ldiw-iphone

# 許諾
このコードを使用して、電子国土のタイル画像をあなたのアプリケーションで表示するためには、国土地理院の許諾が必要です。
詳しくは以下のページを参照してください。
http://portal.cyberjapan.jp/portalsite/kiyaku/kyodaku.html

参考として、このアプリケーションの許諾に使用した申請書を、shinsei.docとして置いてあります。

# このコードの使用方法
1. TileOverlayフォルダ内のコードを使用するプロジェクトに追加。
2. プロジェクト内のMKMapViewを管理するViewControllerから、TileOverlayをMKMapViewにaddOverlayする。
    overlay = [[TileOverlay alloc] initOverlay];
    [map addOverlay:overlay];

# 既知の問題
オーバーレイとしてタイル画像を表示するので、タイル画像の取得が遅い場合や、タイルが無い場合等にはapple版の地図が表示されてしまう。

# このコードのライセンス
ベースに使用した、"Lets do it World"のライセンスと同様、FreeBSD Licenseとします。
および、Appleのコピーライトがある部分はそれに従います。（Appleのサンプルコード起源とおもわれるコピーライトがあり、それには無保証の記述などがあります。）

# License
"FreeBSD License"

Copyright 2012 DKSample. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY DKSample ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL DKSample OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the authors and should not be interpreted as representing official policies, either expressed or implied, of DKSample.
