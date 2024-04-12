json.array! @parent.children do |child|
  json.id   child.id
  json.name child.category_name # 親カテゴリーの名前を取得するためのカラム名に変更
end