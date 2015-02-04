Given(/^ingrese a la pagina setup$/) do
  visit '/setup'
end

Then(/^debo ver "(.*?)"$/) do |arg1|
   last_response.body.should =~ /#{arg1}/m
end
When(/^ingrese mi nombre "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


