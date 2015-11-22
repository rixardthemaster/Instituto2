class CreateProfesorAlumnos < ActiveRecord::Migration
  def change
    create_table :profesor_alumnos do |t|
      t.references :profesor, index: true, foreign_key: true
      t.references :alumno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
