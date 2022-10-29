require 'rails_helper'

RSpec.describe Author, type: :model do
  it "The model author should have first_name, last_name and homepage" do
    author = Author.new(first_name: "Alan", last_name:"Turing", homepage:"foo")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("foo")
  end

  it "The model should return the full name unter name" do
    author = Author.new(first_name: "Alan", last_name:"Turing", homepage:"foo")
    expect(author.name).to eq("Alan Turing")
  end

  it "The model should not be valid when last_name is empty" do
    @author = Author.new
    expect(@author).to_not be_valid
  end

end
