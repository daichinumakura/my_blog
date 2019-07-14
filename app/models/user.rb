class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

has_one_attached :avatar
has_many :posts
  validates :name, presence: true, length: { maximum: 30 }
  validates :description,  presence: true, length: { maximum: 500 }
end
