class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :program, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
