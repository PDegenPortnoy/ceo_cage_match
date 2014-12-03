class CreateCeos < ActiveRecord::Migration
  def change
    create_table :ceos do |t|
      t.string :name
      t.integer :salary
      t.string :company
      t.integer :company_revenue
      t.integer :number_employees

      t.timestamps
    end
    add_index :ceos, :name
  end
end
