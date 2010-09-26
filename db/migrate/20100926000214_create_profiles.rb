class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :name
      t.string :title
      t.string :subtitle
      t.date :in_the_business_since
      t.string :body

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
