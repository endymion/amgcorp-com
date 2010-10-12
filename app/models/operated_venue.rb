class OperatedVenue < Venue
  acts_as_list :scope => "type = 'OperatedVenue'"
end