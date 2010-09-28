class Venue < ActiveRecord::Base
  has_attached_file :image,
    :styles => { :original => "445x140>" },
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":class/:attachment/:id/:style.:extension",
    :bucket => 'amgcorp.com'

  has_attached_file :icon,
    :styles => { :original => "120x120>" },
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":class/:attachment/:id/:style.:extension",
    :bucket => 'amgcorp.com'
end