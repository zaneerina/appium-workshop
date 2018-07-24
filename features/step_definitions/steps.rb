# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I clear app data$/ do
  $driver.reset
end

When /^I am on welcome screen$/ do
  #$driver.launch_app
  sleep 2
  $driver.find_element(:id, 'auth_landing_login').click
end


And /^I enter email$/ do
 $driver.find_element(:id, 'auth_login_email').click
 $driver.find_element(:id, 'auth_login_email').type'zane.erina@testdevlab.com'
end

And /^I enter password$/ do
  $driver.find_element(:id, 'auth_login_password').click
 $driver.find_element(:id, 'auth_login_password').type'pagaiduParole272'
end

And /^I select login button$/ do
  $driver.find_element(:id, 'auth_login').click
end


And /^I tap the menu button$/ do
  
  sleep 3
  #$driver.find.element(:id, 'action_bar_toolbar').visible?
  #$driver.find_element(xpath, 'chat_list_adapter_item_text_avatar').click
  $driver.find_element(:xpath, '//android.widget.ImageButton').click
end

And /^I search a contact$/ do
  $driver.find_element(:id, 'channels_list_search').click
  $driver.find_element(:id, 'search_input').click
  $driver.find_element(:id, 'search_input').type'Matiss'
end




And /^I pick a contact from the Friends list$/ do
  sleep 2
  #$driver.hide_keyboard
  $driver.find_element(:xpath, '//android.view.ViewGroup/child::android.widget.TextView[contains(@text,"Matiss")]').click
  #$driver.find_element(:id, 'search_input').click
 # $driver.find_element(:xpath, '//android.view.ViewGroup').click

end

And /^I compose a message$/ do
  sleep 3
  $driver.find_element(:id, 'text_input').click
  $driver.find_element(:id, 'text_input').type'this is a test message. please ignore it. https://media0.giphy.com/media/OUKCUp9wO8a52/200.webp'
  
end


Then /^I send the message$/ do
  $driver.find_element(:id, 'send_btn').click
end


# --- --> index 0 class: android.widget.ImageButton package: com.diccord clickable
# start a conversation: id: channels_list_search  --> click
# search_input --> click ; + input text 
# index 0 class: android.view.ViewGroup (nākamais ir tas pats class, bet index 1) --> click
# :id widget_chat_list --> click + input text ; id: sent_btn


#scenario2:
#if.. :id main_toolbar_unread_count     is present then click ----
#find 

#--- --> click
# id: chat_list_adapter_item_text_avatar vaii class:android.widget.RelativeLayout index 1



 #$driver.find_element(:id, 'auth.login_password').click
 

