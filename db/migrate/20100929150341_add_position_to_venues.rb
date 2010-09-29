class AddPositionToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :position, :integer
  end

  def self.down
    remove_column :venues, :position
  end
end
