class AddTextToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :text, :text
  end
end
