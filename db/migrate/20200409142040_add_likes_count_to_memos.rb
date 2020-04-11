class AddLikesCountToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :likes_count, :integer
  end
end
