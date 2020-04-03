class Memo < ApplicationRecord
  validates :text,:title, presence: true

end
