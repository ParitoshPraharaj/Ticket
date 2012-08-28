Given /^I am on the (.+)$/ do |page_name| 
  visit root_url 
end 

When /^I follow "(.*?)"$/ do |page_name| 
  #visit new_project_path(page_name)
  click_link 'New Project' 
end 

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2| 
  fill_in "Name", with: 'Textmate2' 
end 

When /^I press "(.*?)"$/ do |arg1| 
  click_button 'Create Project' 
end 

Then /^I should see "(.*?)"$/ do |arg1| 
  page.should have_selector('div', text: 'Project has been created.') 
end 