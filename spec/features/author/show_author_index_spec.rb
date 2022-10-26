require 'rails_helper'

describe "Show author index page", type: :feature do

    before :each do 
        @alan = FactoryBot.create :author
        @alan.save
    end
  
    it "should exist at 'authers_path' and render withour error" do
        visit authors_path
    end
  
    it "Should have a link to add new authors" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end

    it "Have all Information about an Author" do
        visit authors_path
        expect(page).to have_text('Name')
        expect(page).to have_text('Homepage')
        expect(page).to have_text('Alan Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')  
    end
    
  end
  