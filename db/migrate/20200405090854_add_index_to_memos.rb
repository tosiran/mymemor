class AddIndexToMemos < ActiveRecord::Migration[5.2]
  def change
    add_index :memos, :title, length: 32

  end
end
