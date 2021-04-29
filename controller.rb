require_relative "name"
require_relative "views"
require_relative "name_repository"
require_relative "name"


class controller
  def initialize(name_repository)
    @name_repository = name_repository
    @name_view = NamesViews.new
  end

  def add
    name = @name_view.ask_for("What is the name")
    location = @name_view.ask_for("what is the location")
    vaccinated = @name_view.ask_for("Is he or she vaccinated?")
    name = Name.new(name, location, vaccinated)
    @name_repository.create(name)
  end

  def update

  end

  def delete

  end

  def display_names

  end
end