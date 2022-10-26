require 'rails_helper'

describe "Show author page", type: :feature do
  it "should exist at 'auther_path' and render withour error" do
    @alan = FactoryBot.create :author
    @alan.save
    visit author_path(@alan)
  end

  it "Page with Alan Turing should show his name and details" do
    @alan = FactoryBot.create :author
    @alan.save
    visit author_path(@alan)
    expect(page).to have_text('Alan Turing')
  end

  
end
