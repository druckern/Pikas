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

When(/^ingrese mi nombre "(.*?)"$/) do |name|
  fill_in("nombre", :with => name)
end
When(/^oprimir boton "(.*?)"$/) do |name|
  click_button(name)
end

Given(/^oprimi el boton jugar$/) do
  visit '/jugar'
end


