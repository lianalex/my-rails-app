class CreateScrapes < ActiveRecord::Migration[7.0]
  def change
    create_table :scrapes do |t|
	  t.string :title
      t.string :targetURL

      t.timestamps
    end
  end
end
