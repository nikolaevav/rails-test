class CreateBook < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
