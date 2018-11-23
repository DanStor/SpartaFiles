class Animal
  attr_accessor :id, :name, :fact

  def self.open_connection
    return PG.connect(dbname: "animals")
  end

  # Index Page = Get All Info
  def self.all
    conn = self.open_connection
    sql = 'SELECT id, name, fact FROM animals ORDER BY name'
    results = conn.exec(sql)

    results.map { |animal| self.hydrate animal }
  end

  # Show + Edit Pages = Get Individual Animal Info
  def self.find idToFind
    conn = self.open_connection
    sql = "SELECT * FROM animals WHERE id=#{idToFind}"

    animalArray = conn.exec(sql)

    animal = self.hydrate animalArray[0]
  end

  # Create New Data Entry
  def save
    conn = Animal.open_connection

    if !self.id
      sql = "INSERT INTO animals (name, fact) VALUES ('#{self.name}', '#{self.fact}')"

    #  Update Previous Data Entry
    else
      sql = "UPDATE animals SET name='#{self.name}',fact='#{self.fact}' WHERE id='#{self.id}'"
    end

    conn.exec(sql)
  end

  # Delete Data Entry
  def self.destroy idToFind
    conn = self.open_connection
    sql = "DELETE FROM animals WHERE id=#{idToFind}"

    conn.exec(sql)
  end

  # Hydrate
  def self.hydrate data
    animal = Animal.new

    animal.id = data['id']
    animal.name = data['name']
    animal.fact = data['fact']

    return animal
  end

end
