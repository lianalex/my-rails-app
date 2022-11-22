class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.text :q5
      t.text :q6
      t.text :q7
      t.text :q8

      t.timestamps
    end
  end
end
