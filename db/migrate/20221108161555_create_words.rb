class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :title
      t.text :p1
      t.text :p2
	  t.text :p3

      t.timestamps
    end
  end
end