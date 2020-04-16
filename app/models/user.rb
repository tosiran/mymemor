class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memos

  has_many :likes, dependent: :destroy
  has_many :like_memos, through: :likes, source: :memo

  validates :nickname, presence: true, length: { maximum: 8 }

end
