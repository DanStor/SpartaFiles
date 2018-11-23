class Character
  attr_accessor :id, :name, :fact, :alignment, :image, :img_alt

  def self.open_connection
    PG.connect(dbname: 'marioCharacters')
  end

  def save
    conn = Character.open_connection

    if !self.id
      sql = "INSERT INTO heroes (name, fact) VALUES ('#{self.name}','#{self.fact}')"
    else
      sql = "UPDATE heroes SET name='#{self.name}',fact='#{self.fact}' WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM heroes ORDER BY name"

    results = conn.exec(sql)

    chars = results.map do |char|
      self.hydrate char
    end

    return chars
  end

  def self.find id
    conn = self.open_connection

    sql = "SELECT * FROM heroes WHERE id=#{id}"

    results = conn.exec(sql)

    char = self.hydrate results[0]

    char
  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM heroes WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate char_data
    char = Character.new

    char.id = char_data['id']
    char.name = char_data['name']
    char.fact = char_data['fact']
    char.alignment = char_data['alignment']
    char.image = char_data['image']
    char.img_alt = char_data['img_alt']

    return char
  end
end
