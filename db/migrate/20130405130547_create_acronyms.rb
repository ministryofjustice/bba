class CreateAcronyms < ActiveRecord::Migration[4.2]
  def change
    create_table :acronyms do |t|
      t.string :acronym
      t.string :definition
      t.string :url
      t.text :info

      t.timestamps
    end
  end
end
