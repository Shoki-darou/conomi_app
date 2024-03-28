class Category < ApplicationRecord
  has_many :questions	
  has_ancestry
end
