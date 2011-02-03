require File.join(File.dirname(__FILE__), 'Player.rb')

class ComputerPlayer < Player
  
  def initialize(mark)
    if !(mark == :X || mark == :O)
      raise ArgumentError, "Mark must be X or O"
    end
  end
  
end