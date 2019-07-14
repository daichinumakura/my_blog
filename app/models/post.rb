class Post < ApplicationRecord
  belongs_to :category
validates :title, presence: true, length: { maximum: 50 }
validates :body,  presence: true, length: { maximum: 2000 }
end