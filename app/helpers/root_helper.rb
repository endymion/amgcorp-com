module RootHelper

  def venue_page(venue)
    case venue.class.to_s
    when 'OwnedVenue' then '/owned_venues'
    when 'OperatedVenue' then '/operated_venues'
    when 'ClientVenue' then '/client_venues'
    end
  end

end
