class Name
  attr_accessor :name, :location, :vaccinated
  attr_reader :id
  def initialize(name, location, vaccinated)
    @id = 1
    @name = name
    @location = location
    @vacinnated = vaccinated || false
  end

  def is_vaccinated?
    @vaccinnated
  end

  def already_vaccinated!
    @vaccinated = true
  end
end
