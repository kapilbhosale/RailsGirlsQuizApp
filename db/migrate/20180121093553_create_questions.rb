class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :test_id, null: false
      t.string :description, null: false
      t.string :option_1, null: false
      t.string :option_2, null: false
      t.string :option_3, null: false
      t.string :option_4, null: false
      t.string :ans, null: false
      t.timestamps
    end
  end
end
