class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      #t.string :title
      t.string :tag
      t.text :body
	  t.boolean :isLink
	  t.string :hyperlink
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
