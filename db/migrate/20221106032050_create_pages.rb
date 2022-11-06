class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :bgColor
      t.string :fontColor
      t.string :fontStyle

      t.timestamps
    end
  end
end
