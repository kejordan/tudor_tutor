class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|

      t.timestamps null: false
    end
  end
end
