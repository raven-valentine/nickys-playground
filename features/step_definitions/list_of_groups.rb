
Given(/^the following groups are available:$/) do |group_names|
  group_names.hashes.each do |group| 
  	Group.create(name: group['group name'])
  end
end

Then(/^I will see the following groups:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

#Group.create(name: "John Doe", age: 27)

#def self.create(params)
#  @name = params[:name]
#  @age  = params[:age]
#end