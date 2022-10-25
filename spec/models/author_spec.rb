require 'rails_helper'

RSpec.describe Author, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "The model author should habe first_name, last_name and homepage" do
    author = Author.new(first_name: "Alan", last_name:"Turing", homepage:"foo")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("foo")
  end

  it "The model should return the full name unter name" do
    author = Author.new(first_name: "Alan", last_name:"Turing", homepage:"foo")
    expect(author.name).to eq("Alan Turing")
  end
  
  it "Model has do be saved" do
    visit new_author_path
    page.fill_in 'author[last_name]', with: 'Dijkstra'
    page.fill_in 'author[first_name]', with: 'Not_found'
    page.fill_in 'author[homepage]', with: 'This_is_a_website'
    find('input[type="submit"]').click

  end
end
