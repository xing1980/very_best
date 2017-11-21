class AddVenueCountToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :venues_count, :integer
  end
end
