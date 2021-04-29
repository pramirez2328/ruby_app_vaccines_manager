class Name
  attr_accessor :name, :location, :vaccinated
  attr_reader :id
  def initialize(name, location, id, vaccinated = false)
    @id = 1
    @name = name
    @location = location
    @vacinnated = vaccinated
  end

  def is_vaccinated?
    @vaccinnated
  end

  def already_vaccinated!
    @vaccinated = true
  end
end
