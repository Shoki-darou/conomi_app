json.array! @children do |grandchild|
  json.id   grandchild.id
  json.name grandchild.category_name # 子カテゴリーの名前を取得するためのカラム名に変更
end