class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :source
      t.string :title

      t.timestamps
    end
  end
end
