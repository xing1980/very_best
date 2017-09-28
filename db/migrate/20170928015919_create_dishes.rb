class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :the_very_best
      t.string :cusine
      t.string :is_at

      t.timestamps

    end
  end
end
