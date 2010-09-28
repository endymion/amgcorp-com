class AddBodyAndImageToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :body, :string
    add_column :venues, :image_file_name,    :string
    add_column :venues, :image_content_type, :string
    add_column :venues, :image_file_size,    :integer
    add_column :venues, :image_updated_at,   :datetime
  end

  def self.down
    remove_column :venues, :body, :string
    remove_column :venues, :image_file_name
    remove_column :venues, :image_content_type
    remove_column :venues, :image_file_size
    remove_column :venues, :image_updated_at
  end
end
