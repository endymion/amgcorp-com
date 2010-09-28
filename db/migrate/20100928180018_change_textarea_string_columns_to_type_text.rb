class ChangeTextareaStringColumnsToTypeText < ActiveRecord::Migration
  def self.up
    change_column :press_releases,  :body, :text
    change_column :profiles,        :body, :text
    change_column :venues,          :body, :text
  end

  def self.down
    change_column :press_releases,  :body, :string
    change_column :profiles,        :body, :string
    change_column :venues,          :body, :string
  end
end
