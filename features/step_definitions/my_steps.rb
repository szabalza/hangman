When(/^inicio la aplicacion$/) do
  visit '/'
end

Then(/^debo ver el título "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^debo ver el texto "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

