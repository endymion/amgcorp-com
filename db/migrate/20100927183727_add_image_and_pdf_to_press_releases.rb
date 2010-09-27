class AddImageAndPdfToPressReleases < ActiveRecord::Migration
  def self.up
    add_column :press_releases, :image_file_name,    :string
    add_column :press_releases, :image_content_type, :string
    add_column :press_releases, :image_file_size,    :integer
    add_column :press_releases, :image_updated_at,   :datetime

    add_column :press_releases, :pdf_file_name,    :string
    add_column :press_releases, :pdf_content_type, :string
    add_column :press_releases, :pdf_file_size,    :integer
    add_column :press_releases, :pdf_updated_at,   :datetime
  end

  def self.down
    remove_column :press_releases, :image_file_name
    remove_column :press_releases, :image_content_type
    remove_column :press_releases, :image_file_size
    remove_column :press_releases, :image_updated_at

    remove_column :press_releases, :pdf_file_name
    remove_column :press_releases, :pdf_content_type
    remove_column :press_releases, :pdf_file_size
    remove_column :press_releases, :pdf_updated_at
  end
end
