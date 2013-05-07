When(/^I add a new message with "(.*?)"$/) do |message|
  fill_in 'message', :with => message

end
