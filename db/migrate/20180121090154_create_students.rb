class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      
      t.string :name, null: false
      t.string :email
      t.string :college
      t.integer :marks

      t.timestamps
    end
  end
end
