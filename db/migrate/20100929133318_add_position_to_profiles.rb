class AddPositionToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :position, :integer
  end

  def self.down
    remove_column :profiles, :position
  end
end
