require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  it "can be created with no parameters" do
    board = Board.new
  end
end