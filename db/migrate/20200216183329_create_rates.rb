class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.string :code, null: false
      t.string :category, null: false
      t.string :subcategory, null: false
      t.integer :min_age, null: false, default: 0
      t.integer :max_age, null: false, default: 99
      t.float :bonus, null: false
      t.float :total, null: false

      t.timestamps null: false
    end
  end
end
