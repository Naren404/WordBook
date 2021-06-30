class CreateWordCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :word_categories do |t|
      t.string :name
      t.string :words_count

      t.timestamps
    end
  end
end
