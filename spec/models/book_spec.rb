require 'spec_helper'

describe Book do
  it "create book" do
    @book = FactoryGirl.create(:book)

    book = Book.all.last
    expect(book.title).to eq(@book.title)
  end
end