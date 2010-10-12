class OwnedVenue < Venue
  acts_as_list :scope => "type = 'OwnedVenue'"
end