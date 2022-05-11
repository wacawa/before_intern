class Article < ApplicationRecord
  belongs_to :users

  validates :title, presence: true, length: {maximum: 10}
  validates :content, presence: true
  
end
