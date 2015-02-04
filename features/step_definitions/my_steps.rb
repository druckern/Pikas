Given(/^entro al juego$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^oprimir el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^debo ir "(.*?)"$/) do |arg1|
  visit '/setup'
end

Given(/^ingrese a la pagina setup$/) do
  visit '/setup'
end


When(/^ingrese mi nombre "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
