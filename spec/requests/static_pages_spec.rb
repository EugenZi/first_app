require 'spec_helper'

describe "Static pages" do
  
	describe "Home page" do

		it "should have content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text =>'Sample App')
			#page.should have_content('Sample App')
		end

		it "should have side bar" do
			visit '/static_pages/home'
		  	page.should have_selector('h3', text: 'Sidebar')
		end

	end

	describe "Help page" do

		it "should have content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have side bar" do
			visit '/static_pages/home'
		    page.should have_selector('h3', text: 'Sidebar')
		end

	end

	describe "About page" do

		it "should have content 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text =>'About us')
		end

		it "should have side bar" do
			visit '/static_pages/home'
		  	page.should have_selector('h3', text: 'Sidebar')
		end

	end

	describe "Contact page" do

		it "should have content 'Contact page'" do
			visit '/static_pages/contacts'
			page.should have_selector('h1', :text =>'Contacts page')
		end

		it "should have side bar" do
			visit '/static_pages/home'
		  	page.should have_selector('h3', text: 'Sidebar')
		end

	end

end
