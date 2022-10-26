require 'rails_helper'

describe "Show author page", type: :feature do

  before :each do 
    @alan = FactoryBot.create :author
    @alan.save
  end

  it "should exist at 'auther_path(@alan)' and render withour error" do
    visit author_path(@alan)
  end

  it "Page with Alan Turing should show his name and details" do
    visit author_path(@alan)
    expect(page).to have_text('Alan Turing')
  end

  
end
