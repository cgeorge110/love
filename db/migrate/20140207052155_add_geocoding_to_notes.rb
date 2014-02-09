class AddGeocodingToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :ip_address, :string
  	add_column :notes, :latitude, :float
  	add_column :notes, :longitude, :float
  end
end
