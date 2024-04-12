# 趣味・エンタメ
parent_category_name = '趣味・エンタメ'
parent = Category.find_or_create_by(category_name: parent_category_name)

children_and_grandchildren = {
  '芸能・テレビ・ラジオ' => ['芸能人・有名人','テレビ・ドラマ・バラエティ','アニメ','ＣＭ','ラジオ'],
  '音楽' => ['歌・曲','ライブ・イベント・コンサート','楽器','その他'],
  '映画・演劇' => ['映画・DVD','演劇・ミュージカル','その他'],
  'イラスト・アート' => ['イラスト','アート'],
  'ゲーム・おもちゃ' => ['ゲーム全般','模型・プラモデル・ラジコン','おもちゃ','その他'],
  '本・雑誌・漫画' => ['雑誌','書籍','コミック・漫画','電子書籍・ケータイ小説'],
  '自動車・バイク・自転車' => ['購入・売却','車検・メンテナンス','カーライフ','ドライブ・ツーリング・サイクリング','その他'],
  'スポーツ・アウトドア' => ['野球','サッカー','ゴルフ','相撲・格闘技','ウィンタースポーツ','モータースポーツ','その他のスポーツ','アウトドア・キャンプ'],
  'その他' => ['園芸・ガーデニング','占い','風水']
}

children_and_grandchildren.each do |child_name, grandchildren|
  child = parent.children.find_or_create_by(category_name: child_name)
  grandchildren.each do |grandchild_name|
    child.children.find_or_create_by(category_name: grandchild_name)
  end
end

=begin

# ファッション fashion
parent = Category.create(name: 'ファッション')
# １階層目(親)のカテゴリーを作成
fashion_child_array = ['','','','','','','','','','','','']
#２階層目(子)のカテゴーを準備
fashion_grandchild_array = [
  #３階層目(孫)のカテゴーを２重配列で準備
['','','','','','',''],
['','','','','','',''],
['','','','','','',''],
['','','','','','',''],
['','','','','','','']
]

fashion_child_array.each_with_index do |child, i|
  # 2階層目(子)のカテゴリー配列から１つずつ取り出す
  child = parent.children.create(name: child)
  # 取りだりた2階層目(子)のカテゴリーを作成
  fashion_grandchild_array[i].each do |grandchild|
  # ３階層目(孫)のi番目のカテゴリー配列から１つずつ取り出す
    child.children.create(name: grandchild)
    # 取りだした３階層目(孫)のカテゴリーを作成
  end
end

=end

# 料理・グルメ cooking


# 恋愛・人間関係 relationships


# 子育て・学校 parenting


# 暮らし lifestyle


# 仕事・キャリア career


# 美容・健康 beauty


# ネット・PC technology


# 地域・旅行 travel


# マネー finance


# ニュース・時事 news


# その他 miscellaneous

