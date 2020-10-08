class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :score, :default => 0
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
