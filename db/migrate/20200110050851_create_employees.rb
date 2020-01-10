class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :manager, references: :employees, :null => true
      t.timestamps
    end
  end
end
