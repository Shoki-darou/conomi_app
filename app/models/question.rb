class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :category_id, numericality: { other_than: 1 , message: "Category can't be blank"}

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
