class ClientVenue < Venue
  acts_as_list :scope => "type = 'ClientVenue'"
end