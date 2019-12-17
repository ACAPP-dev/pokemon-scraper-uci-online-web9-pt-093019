class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end

  def self.save(name, type, db)
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO pokemon(name, type) VALUES(?,?)
      SQL
      db[:conn].execute(sql, name, type)
      self.id = db[:conn].execute("SELECT LAST INSERT ID()")[0][0]
      self
    end
  end

  def update

  end
end
