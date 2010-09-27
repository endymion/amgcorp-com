class PressRelease < ActiveRecord::Base

  has_attached_file :image,
    :styles => { :original => "100x61>" },
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":class/:attachment/:id/:style.:extension",
    :bucket => 'amgcorp.com'

  has_attached_file :pdf,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":class/:attachment/:id/:basename.:extension",
    :bucket => 'amgcorp.com'
         
end
