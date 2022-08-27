require 'sqlite3'
DB = SQLite3::Database.new('tasks.db')

class Task
  def initialize(atributes = {})
    @id = atributes[:id]
    @title = atributes[:title]
    @description = atributes[:description]
    @done = atributes[:done]
  end

  def self.find(id)
    DB.execute('SELECT * FROM tasks WHERE id = ?', id)
  end

  def self.all
    DB.execute('SELECT * FROM tasks ')
  end

  def destroy
    DB.execute('DELETE * FROM tasks WHERE id = ?', @id)
  end
end

tarea = Task.find(2)
@id = 2
tarea.destroy
