WebAPI of NinchishoApp
手順
npm install
DB(mongo)作る(node tools/db-create)
npm start
全体データベース（仮）
##登録する依頼者ユーザー
{
    "t_user" : {
        "user_id": "",
        "device_token": "",
        "os_type": "",
        "create_date": "",
        "update_date": ""
    }
}
###徘徊者（認知症の方）の情報
{
    "t_missingperson_profile" : {
        "person_id": "", //ただのidでも可能？
        "user_id": "",  //どのユーザが登録したのか
        "icon": "", //アイコンURL
        "number": "", //個体番号
        "name": "" //名前
    }
}
###依頼投稿
{
    "t_search_entry" : {
        "entry_id": "",
        "nickname": "", //いつも何と呼ばれているか
        "searcher_list": [ //捜索者ユーザー一覧
            "searcher_id",
            "searcher_id",
            "searcher_id"
        ],
        "status": "undiscovered,discovered", //未発見、発見済み
        "timestamp": "2014-07-16T09:00:00+09:00（仮）" //日付
    }
}
###見失った場所
{
    "t_search_entry_lose_area": { //見失った場所
        "lose_area_id": "",
        "entry_id": "",
        "latitude": "", //緯度
        "longitude": "", //経度
        "address": "東京都世田谷区〜" //仮で入れてみました
    }
}
###発見エリア
{
    "t_search_entry_discovered_area": { //発見した場所
        "discovered_area_id": "",
        "entry_id": "",
        "latitude": "", //緯度
        "longitude": "", //経度
        "address": "東京都世田谷区〜" //仮で入れてみました
    }
}
###依頼投稿に対するコメント
{
    "t_search_chat" : {
        "chat_id": "",
        "entry_id": "", //依頼投稿へ紐付け
        "comment": "", //コメント
        "type": "", //依頼主or捜索者の判別
        "timestamp": "2014-07-16T09:00:00+09:00（仮）" //日付
    }
}
###捜索者への発見報告
{
    "t_search_message" : {
        "message_id": "",
        "entry_id": "", //依頼投稿へ紐付け
        "description": "テキストテキスト",
        "timestamp": "2014-07-16T09:00:00+09:00（仮）" //日付
    }
}
------
###登録する捜索者ユーザー
{
    "t_searcher_profile" : {
        "searcher_id": "",
        "device_token": "",
        "os_type": "",
        "nickname": "" //ニックネーム
        "create_date": "",
        "update_date": ""
    }
}
###捜索者のエリア
{
    "t_searcher_area": { //依頼通知を受け取るエリア
        "searcher_id": "",
        "latitude": "", //緯度
        "longitude": "", //経度
        "address": "東京都世田谷区〜" //仮で入れてみました
    }
}
###依頼への参加申請
{
    "t_search_request" : {
        "request_id": "",
        "entry_id": "",  //依頼投稿へ紐付け
        "searcher_id": "",  //捜索者ID
        "timestamp": "2014-07-16T09:00:00+09:00（仮）" //日付
    }
}
###依頼の参加エリア
{
    "t_search_request_area": { //捜索できるエリア デフォルトは捜索者ユーザーが登録した通知を受け取るエリア
        "request_area_id": "",
        "request_id": "",
        "latitude": "", //緯度
        "longitude": "", //経度
        "address": "東京都世田谷区〜" //仮で入れてみました
    },
}
WEBAPI仕様
ユーザ認証に関しては、登録でクライアントから発行されたuiidと名前、os_typeをbodyで送ってユーザを登録します。レスポンスに、サーバ側で発行したdevice_tokenが表示されるので、それを各APIのheaderのAuthorizationに格納して叩いてもらいます。また、api/v1/auth/tokenでデバイストークンを更新できます.
authのみHeaderの Authorization token={device_token}
が必要ない.
auth/signupのエラーに関してこちらの確認不備で伝えていなかったのですが、
curlであると--dataをつけてapiを叩く必要があるかと思います。
というのも今回のapiのbodyがx-www-form-urlencoded形式に対応しておりまして、
そのために--dataを付与して頂く形になります。
参照：http://d.hatena.ne.jp/a666666/touch/20110427/1303838381
(追記)
全APIのheaderには "Content-type: application/x-www-form-urlencoded"
をつけてもらえればと思います。
例)
curl -v  -H "Content-type: application/x-www-form-urlencoded" -X POST -d '{"name":"test", "os_type": "ios", "uiid": "********************"}'  http://localhost:3000/api/v1/auth/signup
エンドポイント
