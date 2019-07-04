require_relative 'allrooms'
class Engine

  def initialize(start_room)
    @start_room = start_room
  end

  def start()
    @start_room.enter
  end

  def next()

  end
end

yard_room = Yard.new
game = Engine.new(yard_room)
game.start()
