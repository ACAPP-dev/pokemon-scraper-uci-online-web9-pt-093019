class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end

  def self.save(name, type, db)
    #if self.id
    #  self.update
    #else
    #binding.pry
      sql = <<-SQL
        INSERT INTO pokemon(name, type) VALUES(?,?)
      SQL
      db.execute(sql, name, type)
      #binding.pry
      #new_id = db.execute("SELECT last_insert_rowid()")[0][0]

    #end
  end

  def update

  end
end
