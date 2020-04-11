class Like < ApplicationRecord
  belongs_to :memo, counter_cache: :likes_count
  belongs_to :user
end
