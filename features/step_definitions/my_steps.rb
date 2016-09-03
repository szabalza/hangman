When(/^inicio la aplicacion$/) do
  visit '/'
end

Then(/^debo ver el título "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^debo ver el texto "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Then(/^debo ver el campo de texto de nombre "(.*?)"$/) do |nombre|
  last_response.should have_xpath("//input[@type=\"text\"]")
  last_response.should have_xpath("//input[@name=\"#{nombre}\"]")
end

Then(/^debo ver el boton de nombre "(.*?)"$/) do |arg1|
  last_response.should have_xpath("//input[@type=\"submit\"]")
  last_response.should have_xpath("//input[@value=\"Probar\"]")
end

Given(/^envio letra "(.*?)"$/) do |letra|
  visit '/letra', :post, "letra=#{letra}"
end
