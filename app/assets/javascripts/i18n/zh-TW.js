var I18n = I18n || {};
I18n.translations = {"zh-TW":{"date":{"abbr_day_names":["日","一","二","三","四","五","六"],"abbr_month_names":[null,"1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"day_names":["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],"formats":{"default":"%Y-%m-%d","long":"%Y年%b%d日","short":"%b%d日"},"month_names":[null,"一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"大約一小時","other":"大約 %{count} 小時"},"about_x_months":{"one":"大約一個月","other":"大約 %{count} 個月"},"about_x_years":{"one":"大約一年","other":"大約 %{count} 年"},"almost_x_years":{"one":"接近一年","other":"接近 %{count} 年"},"half_a_minute":"半分鐘","less_than_x_minutes":{"one":"不到一分鐘","other":"不到 %{count} 分鐘"},"less_than_x_seconds":{"one":"不到一秒","other":"不到 %{count} 秒"},"over_x_years":{"one":"一年多","other":"%{count} 年多"},"x_days":{"one":"一天","other":"%{count} 天"},"x_minutes":{"one":"一分鐘","other":"%{count} 分鐘"},"x_months":{"one":"一個月","other":"%{count} 個月"},"x_seconds":{"one":"一秒","other":"%{count} 秒"}},"prompts":{"day":"日","hour":"時","minute":"分","month":"月","second":"秒","year":"年"}},"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"必須是可被接受的","blank":"不能是空白字元","confirmation":"不符合確認值","empty":"不能留空","equal_to":"必須等於 %{count}","even":"必須是偶數","exclusion":"是被保留的關鍵字","greater_than":"必須大於 %{count}","greater_than_or_equal_to":"必須大於或等於 %{count}","inclusion":"沒有包含在列表中","invalid":"是無效的","less_than":"必須小於 %{count}","less_than_or_equal_to":"必須小於或等於 %{count}","not_a_number":"不是數字","not_an_integer":"必須是整數","odd":"必須是奇數","record_invalid":"校驗失敗: %{errors}","restrict_dependent_destroy":"因還有需要此記錄的其他記錄, 所以無法移除記錄","taken":"已經被使用","too_long":"過長（最長是 %{count} 個字）","too_short":"過短（最短是 %{count} 個字）","wrong_length":"字數錯誤（必須是 %{count} 個字）"},"template":{"body":"以下欄位發生問題：","header":{"one":"有 1 個錯誤發生使得「%{model}」無法被儲存。","other":"有 %{count} 個錯誤發生使得「%{model}」無法被儲存。"}}},"helpers":{"select":{"prompt":"請選擇"},"submit":{"create":"新增%{model}","submit":"儲存%{model}","update":"更新%{model}"}},"number":{"currency":{"format":{"delimiter":",","format":"%u %n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"NT$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"十億","million":"百萬","quadrillion":"千兆","thousand":"千","trillion":"兆","unit":""}},"format":{"delimiter":"","precision":1,"significant":false,"strip_insignificant_zeros":false},"storage_units":{"format":"%n %u","units":{"byte":"位元組","gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":""}},"precision":{"format":{"delimiter":""}}},"support":{"array":{"last_word_connector":", 和 ","two_words_connector":" 和 ","words_connector":", "}},"time":{"am":"上午","formats":{"default":"%Y年%b%d日 %A %H:%M:%S %Z","long":"%Y年%b%d日 %H:%M","short":"%b%d日 %H:%M"},"pm":"下午"},"activemodel":{"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"必須是可被接受的","blank":"不能是空白字元","confirmation":"不符合確認值","empty":"不能留空","equal_to":"必須等於 %{count}","even":"必須是偶數","exclusion":"是被保留的關鍵字","greater_than":"必須大於 %{count}","greater_than_or_equal_to":"必須大於或等於 %{count}","inclusion":"沒有包含在列表中","invalid":"是無效的","less_than":"必須小於 %{count}","less_than_or_equal_to":"必須小於或等於 %{count}","not_a_number":"不是數字","not_an_integer":"必須是整數","odd":"必須是奇數","record_invalid":"校驗失敗: %{errors}","restrict_dependent_destroy":"因還有需要此記錄的其他記錄, 所以無法移除記錄","taken":"已經被使用","too_long":"過長（最長是 %{count} 個字）","too_short":"過短（最短是 %{count} 個字）","wrong_length":"字數錯誤（必須是 %{count} 個字）"},"template":{"body":"以下欄位發生問題：","header":{"one":"有 1 個錯誤發生使得「%{model}」無法被儲存。","other":"有 %{count} 個錯誤發生使得「%{model}」無法被儲存。"}}}},"activerecord":{"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"必須是可被接受的","blank":"不能是空白字元","confirmation":"不符合確認值","empty":"不能留空","equal_to":"必須等於 %{count}","even":"必須是偶數","exclusion":"是被保留的關鍵字","greater_than":"必須大於 %{count}","greater_than_or_equal_to":"必須大於或等於 %{count}","inclusion":"沒有包含在列表中","invalid":"是無效的","less_than":"必須小於 %{count}","less_than_or_equal_to":"必須小於或等於 %{count}","not_a_number":"不是數字","not_an_integer":"必須是整數","odd":"必須是奇數","record_invalid":"校驗失敗: %{errors}","restrict_dependent_destroy":"因還有需要此記錄的其他記錄, 所以無法移除記錄","taken":"已經被使用","too_long":"過長（最長是 %{count} 個字）","too_short":"過短（最短是 %{count} 個字）","wrong_length":"字數錯誤（必須是 %{count} 個字）"},"template":{"body":"以下欄位發生問題：","header":{"one":"有 1 個錯誤發生使得「%{model}」無法被儲存。","other":"有 %{count} 個錯誤發生使得「%{model}」無法被儲存。"}}}},"i18n":{"plural":{"keys":["other"],"rule":{}}},"active_admin":{"dashboard":"儀表板","dashboard_welcome":{"welcome":"歡迎來到 Active Admin 這是預設的儀表板頁面。","call_to_action":"要新增儀表板內容，請查看 'app/admin/dashboard.rb'"},"view":"檢視","edit":"編輯","delete":"刪除","delete_confirmation":"你確定要刪除嗎？","new_model":"新增 %{model}","create_model":"新增 %{model}","edit_model":"編輯 %{model}","update_model":"編輯 %{model}","delete_model":"刪除 %{model}","details":"%{model} 明細","cancel":"取消","empty":"空的","previous":"前一個","next":"下一個","download":"下載:","has_many_new":"增加新的 %{model}","has_many_delete":"刪除","has_many_remove":"清除","filters":{"buttons":{"filter":"篩選","clear":"清除篩選條件"},"predicates":{"contains":"包含","equals":"等於","starts_with":"开头","ends_with":"完与","greater_than":"大於","less_than":"小於"}},"main_content":"請編寫 %{model}#main_content 以顯示內容。","logout":"登出","powered_by":"Powered by %{active_admin} %{version}","sidebars":{"filters":"篩選條件"},"pagination":{"empty":"找不到 %{model} ","one":"顯示 \u003Cb\u003E1\u003C/b\u003E %{model}","one_page":"顯示 \u003Cb\u003E全部 %{n}\u003C/b\u003E %{model}","multiple":"總計 \u003Cb\u003E%{total}\u003C/b\u003E 顯示 %{model} 中\u003Cb\u003E%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003C/b\u003E 筆","multiple_without_total":"顯示 %{model} 中\u003Cb\u003E%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003C/b\u003E 筆","entry":{"one":"筆","other":"筆"}},"any":"任何","blank_slate":{"content":"尚無 %{resource_name}","link":"建立一筆"},"batch_actions":{"button_label":"批次作業","default_confirmation":"你確定你要這樣做？","delete_confirmation":"您確定要刪除這些 %{plural_model} 嗎？","succesfully_destroyed":{"one":"成功刪除 1 %{model}","other":"成功刪除 %{count} %{plural_model}"},"selection_toggle_explanation":"(切換選取)","link":"建立一個","action_label":"%{title} 已選取","labels":{"destroy":"刪除"}},"comments":{"body":"內文","author":"作者","title":"評論","add":"新增評論","resource":"資源","no_comments_yet":"尚無評論","title_content":"(%{count}) 則評論","errors":{"empty_text":"評論儲存失敗，不允許空白的內容。"}},"devise":{"login":{"title":"登錄","remember_me":"記住我","submit":"登錄"},"reset_password":{"title":"忘記密碼？","submit":"重置密碼"},"change_password":{"title":"更改您的密碼","submit":"更改我的密碼"},"resend_confirmation_instructions":{"title":"重新發送確認信","submit":"重新發送確認信"},"links":{"sign_in":"登錄","forgot_your_password":"忘記密碼？","sign_in_with_omniauth_provider":"登入%{provider}"}}}}};