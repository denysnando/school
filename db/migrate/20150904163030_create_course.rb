class CreateCourse < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, limit: 45, null: false
      t.string :description, limit: 45, null: false
      t.integer :status, default: 0

      t.timestamps null: false
    end

    Course.create(name: 'Ingles - Iniciante', description: 'Curso de Ingles para Iniciantes')
    Course.create(name: 'Ingles - Intermediaro', description: 'Curso de Ingles para Intermediarios')
    Course.create(name: 'Ingles - Experiente', description: 'Curso de Ingles para Experientes')
    Course.create(name: 'Frances - Iniciante', description: 'Curso de Frances para Iniciantes')
    Course.create(name: 'Frances - Intermediaro', description: 'Curso de Frances para Intermediarios')
    Course.create(name: 'Frances - Experiente', description: 'Curso de Frances para Experientes')
    Course.create(name: 'Italiano - Iniciante', description: 'Curso de Italiano para Iniciantes')
    Course.create(name: 'Italiano - Intermediaro', description: 'Curso de Italiano para Intermediarios')
    Course.create(name: 'Italiano - Experiente', description: 'Curso de Italiano para Experientes')
    Course.create(name: 'Espanhol - Iniciante', description: 'Curso de Espanhol para Iniciantes')
    Course.create(name: 'Espanhol - Intermediaro', description: 'Curso de Espanhol para Intermediarios')
    Course.create(name: 'Espanhol - Experiente', description: 'Curso de Espanhol para Experientes')
  end
end
