require 'rails_helper'

RSpec.describe Paper, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "The model paper should have title, " do
    paper = Paper.new( title: "Title", venue:"veneu", year:1965)
    expect(paper.title).to eq("Title")
    expect(paper.venue).to eq("veneu")
    expect(paper.year).to eq(1965)
    expect(paper.authors).to eq([])
  end
end
