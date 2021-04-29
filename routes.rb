class Router
  def initialize(controller)
    @controller = controller
    @app_running = true
  end

  def run
    puts "Control Vacination Manager"
    puts " * ------------------- *"
    while @app_running
      display_menu
      option = gets.chomp
      app_manager(option)
    end
  end

  def display_menu
    puts "Enter an option..."
      puts "1 - Enter a name"
      puts " -------------- "
      puts "2 - Name modification"
      puts " -------------- "
      puts "3 - Delete name"
      puts " -------------- "
      puts "4 - list all names"
       puts " -------------- "
      puts "5 - exit app"
  end

  def exit
    @app_running = true
  end

  def app_manager(option)
    case option
    when 1 then @controller.add
    when 2 then @controller.update
    when 4 then @controller.delete
    when 5 then @controller.display_names
    when 6 then exit
    else
      puts "enter a valid number"
    end
  end
end