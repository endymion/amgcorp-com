class AddPositionToPressReleases < ActiveRecord::Migration
  def self.up
    add_column :press_releases, :position, :integer
  end

  def self.down
    remove_column :press_releases, :position
  end
end
