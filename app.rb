require_relative "name_repository"
require_relative "controller"

name_repository = NameRepository.new
controller = Controller.new(name_repository)
router = Router.new(controller)

router.run