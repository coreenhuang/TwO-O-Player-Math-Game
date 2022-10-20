class Player 

  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @lives = 3
    @name = name
  end
end

# player_1 = Player.new("Tester")
# puts player_1.name
# puts player_1.lives
# player_1.lives = 2
# puts player_1.lives
