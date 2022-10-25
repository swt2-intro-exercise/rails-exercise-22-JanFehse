require 'rails_helper'

RSpec.describe Author, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "The model author should habe first_name, last_name and homepage" do
    author = Author.new(first_name: "Alan", last_name:"Turing", homepage:"foo")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("foo")
  end
end
