class CreateScrapes < ActiveRecord::Migration[7.0]
  def change
    create_table :scrapes do |t|
      t.string :targetURL
	  t.string :title
      t.string :price
      t.string :availability

      t.timestamps
    end
  end
end
