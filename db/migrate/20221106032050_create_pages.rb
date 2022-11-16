class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :bgColor
      t.string :fontColor
      t.string :fontStyle
	  t.string :borderStyle
	  t.integer :borderWidth
	  t.string :borderColor
	  t.string :aLink
	  t.string :aVisited
	  t.string :aHover
	  t.string :aActive
	  t.boolean :titleUnderline
	  t.boolean :titleItalicize
	  t.string :titlePosition
	  t.boolean :deafultLinks
	  t.boolean :bgImageBool
	  t.string :bgImage
	  t.boolean :bgImageTile
	  #t.boolean :bgImageScroll
	  t.integer :borderRounded
	  t.boolean :newspaper
	  t.string :textStyle
	  t.integer :textShadow
	  t.integer :shadowBlur
	  t.string :shadowColor
      t.timestamps
    end
  end
end
