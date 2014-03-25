var I18n = I18n || {};
I18n.translations = {"ja":{"faker":{"address":{"postcode":["###-####"],"state":["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"],"state_abbr":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47"],"city_prefix":["北","東","西","南","新","湖","港"],"city_suffix":["市","区","町","村"],"city":["#{city_prefix}#{Name.first_name}#{city_suffix}","#{Name.first_name}#{city_suffix}","#{city_prefix}#{Name.last_name}#{city_suffix}","#{Name.last_name}#{city_suffix}"],"street_name":["#{Name.first_name}#{street_suffix}","#{Name.last_name}#{street_suffix}"]},"phone_number":{"formats":["0####-#-####","0###-##-####","0##-###-####","0#-####-####"]},"name":{"last_name":["佐藤","鈴木","高橋","田中","渡辺","伊藤","山本","中村","小林","加藤","吉田","山田","佐々木","山口","斎藤","松本","井上","木村","林","清水"],"first_name":["大翔","蓮","颯太","樹","大和","陽翔","陸斗","太一","海翔","蒼空","翼","陽菜","結愛","結衣","杏","莉子","美羽","結菜","心愛","愛菜","美咲"],"name":["#{last_name} #{first_name}"]}},"date":{"abbr_day_names":["日","月","火","水","木","金","土"],"abbr_month_names":[null,"1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"day_names":["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"],"formats":{"default":"%Y/%m/%d","long":"%Y年%m月%d日(%a)","short":"%m/%d"},"month_names":[null,"1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"約1時間","other":"約%{count}時間"},"about_x_months":{"one":"約1ヶ月","other":"約%{count}ヶ月"},"about_x_years":{"one":"約1年","other":"約%{count}年"},"almost_x_years":{"one":"1年弱","other":"%{count}年弱"},"half_a_minute":"30秒前後","less_than_x_minutes":{"one":"1分以内","other":"%{count}分未満"},"less_than_x_seconds":{"one":"1秒以内","other":"%{count}秒未満"},"over_x_years":{"one":"1年以上","other":"%{count}年以上"},"x_days":{"one":"1日","other":"%{count}日"},"x_minutes":{"one":"1分","other":"%{count}分"},"x_months":{"one":"1ヶ月","other":"%{count}ヶ月"},"x_seconds":{"one":"1秒","other":"%{count}秒"}},"prompts":{"day":"日","hour":"時","minute":"分","month":"月","second":"秒","year":"年"}},"errors":{"format":"%{attribute}%{message}","messages":{"accepted":"を受諾してください。","blank":"を入力してください。","present":"は入力しないでください。","confirmation":"と%{attribute}の入力が一致しません。","empty":"を入力してください。","equal_to":"は%{count}にしてください。","even":"は偶数にしてください。","exclusion":"は予約されています。","greater_than":"は%{count}より大きい値にしてください。","greater_than_or_equal_to":"は%{count}以上の値にしてください。","inclusion":"は一覧にありません。","invalid":"は不正な値です。","less_than":"は%{count}より小さい値にしてください。","less_than_or_equal_to":"は%{count}以下の値にしてください。","not_a_number":"は数値で入力してください。","not_an_integer":"は整数で入力してください。","odd":"は奇数にしてください。","record_invalid":"バリデーションに失敗しました。 %{errors}","restrict_dependent_destroy":"%{record}が存在しているので削除できません。","taken":"はすでに存在します。","too_long":"は%{count}文字以内で入力してください。","too_short":"は%{count}文字以上で入力してください。","wrong_length":"は%{count}文字で入力してください。","other_than":"は%{count}以外の値にしてください。","already_confirmed":"は既に登録済みです。ログインしてください","confirmation_period_expired":"%{period}以内に確認する必要がありますので、新しくリクエストしてください。","expired":"有効期限切れです。新規登録してください。","not_found":"は見つかりませんでした。","not_locked":"ロックされていません。","not_saved":{"one":"エラーにより、この %{resource} を保存できません：","other":"%{count} 個のエラーにより、この %{resource} を保存できません："}},"template":{"body":"次の項目を確認してください。","header":{"one":"%{model}にエラーが発生しました。","other":"%{model}に%{count}個のエラーが発生しました。"}}},"helpers":{"select":{"prompt":"選択してください。"},"submit":{"create":"登録する","submit":"保存する","update":"更新する","user":{"create":"サインアップ","submit":"ユーザー登録"},"photo":{"create":"アップロード","submit":"写真をアップロード"}}},"number":{"currency":{"format":{"delimiter":",","format":"%n%u","precision":0,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"円"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"十億","million":"百万","quadrillion":"千兆","thousand":"千","trillion":"兆","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n%u","units":{"byte":"バイト","gb":"ギガバイト","kb":"キロバイト","mb":"メガバイト","tb":"テラバイト"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"support":{"array":{"last_word_connector":"と","two_words_connector":"と","words_connector":"と"}},"time":{"am":"午前","formats":{"default":"%Y/%m/%d %H:%M:%S","long":"%Y年%m月%d日(%a) %H時%M分%S秒 %z","short":"%y/%m/%d %H:%M"},"pm":"午後"},"activemodel":{"errors":{"format":"%{attribute}%{message}","messages":{"accepted":"を受諾してください。","blank":"を入力してください。","present":"は入力しないでください。","confirmation":"と%{attribute}の入力が一致しません。","empty":"を入力してください。","equal_to":"は%{count}にしてください。","even":"は偶数にしてください。","exclusion":"は予約されています。","greater_than":"は%{count}より大きい値にしてください。","greater_than_or_equal_to":"は%{count}以上の値にしてください。","inclusion":"は一覧にありません。","invalid":"は不正な値です。","less_than":"は%{count}より小さい値にしてください。","less_than_or_equal_to":"は%{count}以下の値にしてください。","not_a_number":"は数値で入力してください。","not_an_integer":"は整数で入力してください。","odd":"は奇数にしてください。","record_invalid":"バリデーションに失敗しました。 %{errors}","restrict_dependent_destroy":"%{record}が存在しているので削除できません。","taken":"はすでに存在します。","too_long":"は%{count}文字以内で入力してください。","too_short":"は%{count}文字以上で入力してください。","wrong_length":"は%{count}文字で入力してください。","other_than":"は%{count}以外の値にしてください。"},"template":{"body":"次の項目を確認してください。","header":{"one":"%{model}にエラーが発生しました。","other":"%{model}に%{count}個のエラーが発生しました。"}}}},"activerecord":{"errors":{"format":"%{attribute}%{message}","messages":{"accepted":"を受諾してください。","blank":"を入力してください。","present":"は入力しないでください。","confirmation":"と%{attribute}の入力が一致しません。","empty":"を入力してください。","equal_to":"は%{count}にしてください。","even":"は偶数にしてください。","exclusion":"は予約されています。","greater_than":"は%{count}より大きい値にしてください。","greater_than_or_equal_to":"は%{count}以上の値にしてください。","inclusion":"は一覧にありません。","invalid":"は不正な値です。","less_than":"は%{count}より小さい値にしてください。","less_than_or_equal_to":"は%{count}以下の値にしてください。","not_a_number":"は数値で入力してください。","not_an_integer":"は整数で入力してください。","odd":"は奇数にしてください。","record_invalid":"バリデーションに失敗しました。 %{errors}","restrict_dependent_destroy":"%{record}が存在しているので削除できません。","taken":"はすでに存在します。","too_long":"は%{count}文字以内で入力してください。","too_short":"は%{count}文字以上で入力してください。","wrong_length":"は%{count}文字で入力してください。","other_than":"は%{count}以外の値にしてください。"},"template":{"body":"次の項目を確認してください。","header":{"one":"%{model}にエラーが発生しました。","other":"%{model}に%{count}個のエラーが発生しました。"}}},"models":{"active_admin/comment":"active_admin/comment","admin_user":"管理者","photo":"フォト","user":"ユーザー"},"attributes":{"active_admin/comment":{"author":"activerecord.models.author","author_type":"author_type","body":"body","namespace":"namespace","resource":"activerecord.models.resource","resource_type":"resource_type"},"admin_user":{"current_sign_in_at":"current_sign_in_at","current_sign_in_ip":"current_sign_in_ip","email":"email","encrypted_password":"encrypted_password","last_sign_in_at":"last_sign_in_at","last_sign_in_ip":"last_sign_in_ip","remember_created_at":"remember_created_at","reset_password_sent_at":"reset_password_sent_at","reset_password_token":"reset_password_token"},"photo":{"deleted_at":"削除日","expired_at":"有効期限","user":"activerecord.models.user","image":"イメージ"},"user":{"current_sign_in_at":"current_sign_in_at","current_sign_in_ip":"current_sign_in_ip","deleted_at":"削除日","email":"メールアドレス","encrypted_password":"パスワード","password":"パスワード","password_confirmation":"パスワードの確認","photos":"フォト","last_sign_in_at":"last_sign_in_at","last_sign_in_ip":"last_sign_in_ip","name":"スクリーンネーム","provider":"認証元","remember_created_at":"remember_created_at","reset_password_sent_at":"reset_password_sent_at","reset_password_token":"reset_password_token","uid":"ユーザーID"}}},"i18n":{"plural":{"keys":["other"],"rule":{}}},"active_admin":{"dashboard":"ダッシュボード","dashboard_welcome":{"welcome":"Active Admin へようこそ。ダッシュボードの初期ページを表示しています。","call_to_action":"ダッシュボードに項目を追加するために 'app/admin/dashboard.rb' を編集してください。"},"view":"閲覧","edit":"編集","delete":"削除","delete_confirmation":"本当に削除しますか?","new_model":"%{model} を作成する","create_model":"%{model} を作成する","edit_model":"%{model} を編集する","update_model":"%{model} を更新する","delete_model":"%{model} を削除する","details":"%{model} の詳細","cancel":"取り消す","empty":"空","previous":"前","next":"次","download":"ダウンロード:","has_many_new":"新規に %{model} を追加する","has_many_delete":"削除する","has_many_remove":"削除する","filters":{"buttons":{"filter":"絞り込む","clear":"条件を削除する"},"predicates":{"contains":"含まれています","equals":"等しい","starts_with":"で始まる","ends_with":"で終わる","greater_than":"より大きい","less_than":"より小さい"}},"main_content":"内容を表示するために %{model}#main_content を実装してください。","logout":"ログアウト","powered_by":"Powered by %{active_admin} %{version}","sidebars":{"filters":"検索条件"},"pagination":{"empty":"%{model} は見つかりませんでした","one":"\u003Cb\u003E1\u003C/b\u003E 件の %{model} を表示しています","one_page":"\u003Cb\u003E全 %{n}\u003C/b\u003E 件の %{model} を表示しています","multiple":"全 \u003Cb\u003E%{total}\u003C/b\u003E 件中 \u003Cb\u003E%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003C/b\u003E 件の %{model} を表示しています","multiple_without_total":"\u003Cb\u003E%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003C/b\u003E 件の %{model} を表示しています","entry":{"one":"レコード","other":"レコード"}},"any":"任意","blank_slate":{"content":"%{resource_name} はまだありません。","link":"作成する"},"batch_actions":{"button_label":"一括操作","default_confirmation":"本当によろしいですか。","delete_confirmation":"%{plural_model} を削除してもよろしいですか?","succesfully_destroyed":{"one":"1件の %{model} を削除しました","other":"%{count}件の %{plural_model} を削除しました"},"selection_toggle_explanation":"(選択)","link":"作成する","action_label":"選択した行を%{title}","labels":{"destroy":"削除する"}},"comments":{"resource_type":"リソース種別","author_type":"作成者種別","body":"本文","author":"作成者","title":"コメント","add":"コメントを追加","resource":"リソース","no_comments_yet":"コメントはまだありません。","author_missing":"匿名ユーザ","title_content":"コメント (%{count})","errors":{"empty_text":"テキストが空のため、コメントは保存されませんでした。"}},"devise":{"username":{"title":"ユーザ名"},"email":{"title":"メールアドレス"},"subdomain":{"title":"サブドメイン"},"password":{"title":"パスワード"},"login":{"title":"ログイン","remember_me":"次回から自動的にログイン","submit":"ログイン"},"reset_password":{"title":"パスワードをお忘れですか？","submit":"パスワードをリセットする"},"change_password":{"title":"パスワードを変更する","submit":"パスワードを変更する"},"unlock":{"title":"ロックの解除方法を送る","submit":"ロックの解除方法を送る"},"links":{"sign_in":"サインイン","sign_up":"ユーザ登録","forgot_your_password":"パスワードをお忘れですか？","sign_in_with_omniauth_provider":"%{provider}のアカウントを使ってログイン","resend_confirmation_instructions":"ユーザ確認手順を再送する","resend_unlock_instructions":"ロックの解除方法を再送する"}},"access_denied":{"message":"アクションを実行する権限がありません"},"index_list":{"table":"テーブル","block":"リスト","grid":"グリッド","blog":"ブログ"}},"devise":{"helpers":{"sign_up":"サインアップ","sign_in":"サインイン","sign_in_with":"%{provider} でサインイン"},"confirmations":{"confirmed":"アカウントが確認されました。ログインしています。","send_instructions":"アカウントの確認方法を数分以内にメールでご連絡します。","send_paranoid_instructions":"ご登録のメールアドレスが保存されている場合、アカウントの確認方法をメールでご連絡します。"},"failure":{"already_authenticated":"既にログインしています。","inactive":"Your account is not activated yet.","invalid":"Invalid email or password.","locked":"アカウントがロックされています。","last_attempt":"あなたのアカウントがロックされる前に、もう1つの試みを持っています。","not_found_in_database":"メールアドレスまたはパスワードが無効です。","timeout":"一定時間が経過したため、再度ログインが必要です","unauthenticated":"ログインまたは登録が必要です。","unconfirmed":"本登録を行ってください。"},"mailer":{"confirmation_instructions":{"subject":"アカウントの登録方法"},"reset_password_instructions":{"subject":"パスワードの再設定"},"unlock_instructions":{"subject":"アカウントのロック解除"}},"omniauth_callbacks":{"failure":"%{kind} から承認されませんでした。理由：%{reason}","success":"%{kind} から承認されました。"},"passwords":{"no_token":"このページにアクセスする事が出来ません。正しいURLでアクセスしている事を確認して下さい。","send_instructions":"パスワードのリセット方法を数分以内にメールでご連絡します。","send_paranoid_instructions":"","updated":"パスワードを変更しました。","updated_not_active":"パスワードを変更しました。"},"registrations":{"destroyed":"アカウントを削除しました。またのご利用をお待ちしております。","signed_up":"アカウント登録を受け付けました。","signed_up_but_inactive":"アカウントは登録されていますが、アクティブになっていないため利用できません。","signed_up_but_locked":"アカウントは登録されていますが、ロックされているため利用できません。","signed_up_but_unconfirmed":"確認メールを登録したメールアドレス宛に送信しました。リンクを開いてアカウントを有効にして下さい。","update_needs_confirmation":"アカウント情報が更新されました。更新の確認メールを新しいメールアドレス宛に送信しましたので、リンクを開いて更新を有効にして下さい。","updated":"アカウントが更新されました。"},"sessions":{"signed_in":"ログインしました。","signed_out":"ログアウトしました。"},"unlocks":{"send_instructions":"アカウントのロックを解除する方法を数分以内にメールでご連絡します。","send_paranoid_instructions":"アカウントが存在する場合、ロックを解除する方法をメールでご連絡します。","unlocked":"アカウントのロックが解除されました。ログインしています。"}}}};