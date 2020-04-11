class Memo < ApplicationRecord
  validates :text, presence: true
  
  def self.search(search)
    return Memo.all unless search
    Memo.where('title LIKE(?)', "%#{search}%")
  end

  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  # 上記と同じ
  # def self.search(search)
  #   if search
  #     Memo.where('title LIKE(?)', "%#{search}%")
  #   else
  #     Memo.all
  #   end
  # end

end
