class Memo < ApplicationRecord
  validates :text,:title, presence: true
  
  def self.search(search)
    return Memo.all unless search
    Memo.where('title LIKE(?)', "%#{search}%")
  end

  # 上記と同じ
  # def self.search(search)
  #   if search
  #     Memo.where('title LIKE(?)', "%#{search}%")
  #   else
  #     Memo.all
  #   end
  # end

end
