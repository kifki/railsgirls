class CreateSeznams < ActiveRecord::Migration
  def change
    create_table :seznams do |t|
      t.string :ime
      t.string :priimek
      t.integer :stevilka
      t.string :slika

      t.timestamps
    end
  end
end
