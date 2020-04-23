class CreateHats < ActiveRecord::Migration[6.0]
  def change
    create_table :hats do |t|
      t.string :color
      t.string :style
      t.float :price

      t.timestamps
    end
  end
end
