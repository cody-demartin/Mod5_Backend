class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :score, :default => 0
      t.integer :user_id
      t.integer :post_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
