class AddSlugToWordCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :word_categories, :slug, :string
    add_index :word_categories, :slug, unique: true
  end
end
