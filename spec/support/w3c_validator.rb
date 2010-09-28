# require 'w3c_validators'
include W3CValidators 

def validate_url(url)
  visit url
  result = MarkupValidator.new.validate_text(page.body)
  result.errors.should == []
end