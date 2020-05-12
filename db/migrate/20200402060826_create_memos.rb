class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :title, null: false
      t.string :text

      t.timestamps
    end
  end
end
