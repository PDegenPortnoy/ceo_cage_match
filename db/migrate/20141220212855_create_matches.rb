class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :one
      t.integer :two
      t.integer :winner

      t.timestamps
    end
  end
end
