class Zoo
  # attr_reader :season_opening_date
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    build_cages
  end

  def build_cages
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
  end
end

# zoo = Zoo.new
# zoo.employees = zoo.employees.push(new_employee)
