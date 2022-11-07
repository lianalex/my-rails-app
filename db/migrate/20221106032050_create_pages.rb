class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :bgColor
      t.string :fontColor
      t.string :fontStyle
	  t.string :borderStyle
	  t.string :borderWidth
	  t.string :borderColor
	  t.string :aLink
	  t.string :aVisited
	  t.string :aHover
	  t.string :aActive
	  
      t.timestamps
    end
  end
end
