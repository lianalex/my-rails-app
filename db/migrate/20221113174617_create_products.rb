class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
	  t.string :title
      t.integer :htmlID
      t.integer :cssID

      t.timestamps
    end
  end
end
