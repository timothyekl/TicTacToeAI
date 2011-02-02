class Board
  
  def initialize
    @marks = {}
    positions = [:UpperLeft, :UpperMiddle, :UpperRight,
      :MiddleLeft, :MiddleMiddle, :MiddleRight,
      :LowerLeft, :LowerMiddle, :LowerRight ]
    positions.each do |position|
      @marks[position] = ''
    end
  end
  
  def marks
    return @marks
  end
  
end