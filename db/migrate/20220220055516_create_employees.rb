class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone
      t.decimal :salary, precision: 10, scale: 2
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
