class Student
<<<<<<< HEAD
  attr_accessor :name, :grade
  attr_reader :id
=======
  attr_accessor :name, :grade, :id
>>>>>>> e3ba64485b6890bd31a6656e5aa8f6dc3914ed4d
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize (name, grade, id: nil)
    @name = name
    @grade = grade
    @id = id
  end

<<<<<<< HEAD
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE students
        SQL
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
        INSERT INTO students (name, grade)
        VALUES (?, ?)
      SQL
    DB[:conn].execute(sql, self.name, self.grade)

    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    self
  end

  def self.create(details)
    new_student = Student.new(details[:name], details[:grade])
    new_student.save
  end
=======
>>>>>>> e3ba64485b6890bd31a6656e5aa8f6dc3914ed4d
end
