require 'rails_helper'

describe "New author page", type: :feature do 

    before :each do 
        @alan = FactoryBot.create :author
        @alan.save
    end

    it "should exist at 'edit_author_path' and render withour error" do
        visit edit_author_path(@alan)
    end

    it "Be able to edit authors and have new Information" do
        visit edit_author_path(@alan)
        page.fill_in 'author[first_name]', with: 'Abraham'
        find('input[type="submit"]').click
        expect(page).to have_text('Abraham Turing')
    end


end