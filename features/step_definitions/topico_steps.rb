# encoding: utf-8
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'cucumber/formatter/unicode'

Before do
  @topico = Topico.create(:titulo =>"Rails Fixtures")
end

Cuando /^visito la página (.+)$/ do |page_name|
  visit path_to(page_name)
end

Dado /^que navego a (.+)$/ do |page_name|
  visit path_to(page_name)
end

Cuando /^oprimo el botón "([^"]*)"$/ do |button|
  click_button(button)
end


Entonces /^debo ver el botón "([^"]*)"$/ do |button_name|
  find_button(button_name)
end

Cuando /^completo el campo "([^"]*)" con "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end


Entonces /^debo ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end


Entonces /^no debo ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should_not have_content(text)
  else
    assert page.has_no_content?(text)
  end
end


Entonces /^no debo ver \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_no_xpath('//*', :text => regexp)
  else
    assert page.has_no_xpath?('//*', :text => regexp)
  end
end

Y /^debo estar en (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end