class AddUrlToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :url, :text
  end
end
