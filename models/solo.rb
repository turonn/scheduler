class Solo
  attr_accessor :room, :order
  attr_reader :name, :director, :accompanist, :instrument

  def initialize(name:, director:, accompanist: nil, instrument:)
    @name = name
    @director = director
    @accompanist = accompanist
    @instrument = instrument

    Solo.all << self
  end

  def self.all
    @all ||= []
  end
end