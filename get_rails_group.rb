# Rails実践カリキュラム基礎編の課題内容の学習時間をグループ分けして出力してください。
# curriculum_dataは["課題項目", "学習時間"]で配列になっています。
curriculum_data = [
  ["課題1 アプリの基本設定を行う", 2],
  ["課題2 全ページにヘッダー/フッターを設置", 6],
  ["課題3 Gemを使ってみよう (Bootstrap)", 2],
  ["課題4 sorceryを使用して、ユーザー機能を作成しよう", 16],
  ["Sorcery課題", 4],
  ["課題5 i18nによる日本語化対応", 4],
  ["課題6 フラッシュメッセージの設定", 6],
  ["課題7 デコレーターの導入", 4],
  ["課題8 掲示板の一覧機能の作成", 8],
  ["課題9 掲示板作成機能", 8],
  ["課題10 フォーム入力時エラー情報を個別表示", 4],
  ["BugFix課題", 3],
  ["課題11 掲示板の画像アップロード機能", 12],
  ["課題12 掲示板詳細画面の追加/コメント機能の実装", 16],
  ["課題13 タイトルを動的に出力する", 4],
  ["課題14 掲示板の編集、削除機能の実装", 8],
  ["課題15 ブックマーク機能の追加", 12],
  ["課題16 ブックマークボタンのajax化", 8],
  ["Like課題", 4],
  ["課題17 コメント投稿、削除、編集機能のajax化" ,12],
  ["課題18 掲示板のページネーション", 8],
  ["課題19 掲示板の検索機能を実装", 8],
  ["課題20 プロフィール編集機能の実装", 4],
  ["Profile課題", 4],
  ["課題21 パスワードリセット機能の実装", 16],
  ["課題22 [管理画面] 管理画面へのログイン機能、管理画面トップページの作成", 12],
  ["課題23 [管理画面]掲示板/ユーザのCRUD機能の作成", 8],
  ["Admin課題", 4]
]


curriculum_hash_array = curriculum_data.map do |item|
  { hours: item[1], content: item[0]}
end

curriculum_group = curriculum_hash_array.group_by { |hash| hash[:hours] }
curriculum_syukei = curriculum_group.map do |hour,items|
  { 
    hours: hour,
    count: items.size,
    content: items.map { |item| item[:content] }
  }
end
curriculum_result = curriculum_syukei.sort_by { |h| -h[:hours] }

  # 動作確認サンプル
puts curriculum_result
