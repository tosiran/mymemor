class RemoveTexttoMemos < ActiveRecord::Migration[5.2]
  def change
    remove_column :memos, :text, null: false
  end
end
