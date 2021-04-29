class Names
  def initialize
     @names = []
  end

  def all
    @names
  end

  def create(name)
    @names << name
  end

  def update_by_id(id)
    @names.select{|name| name.id == id}
  end

  def delete_with_id(id)
    @names.find do |name|
       name.id == id
    end
  end
end
