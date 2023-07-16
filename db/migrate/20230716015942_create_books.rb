class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :checked_out
      t.integer :user_id

      t.timestamps
    end
  end
end
