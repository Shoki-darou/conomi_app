class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'イラスト、絵画' },
    { id: 3, name: '写真' },
    { id: 4, name: '音楽' },
    { id: 5, name: '映画' },
    { id: 7, name: 'TV、エンタメ' },
    { id: 8, name: 'ゲーム' },
    { id: 9, name: '読書、文学' },
    { id: 10, name: 'グルメ、料理' },
    { id: 11, name: '旅行' },
    { id: 12, name: 'ファッション' },
    { id: 13, name: '美容' },
    { id: 14, name: '手芸、クラフト' },
    { id: 15, name: 'スポーツ、フィットネス' },
    { id: 16, name: 'アウトドア' },
    { id: 17, name: '車、バイク' },
    { id: 18, name: 'ガーデニング' },
    { id: 19, name: 'ダンス、パフォーマンス' },
    { id: 20, name: 'ビジネス、キャリア' },
    { id: 21, name: '趣味の学習、スキル習得' },
    { id: 22, name: '自己啓発、ライフハック' },
    { id: 23, name: 'その他' }
  ]
  
  include ActiveHash::Associations
  has_many :questions

end
