class Profesor < ActiveRecord::Base
  belongs_to :especialidad
  has_many :profesor_alumnos
  has_many :alumno, :through => :profesor_alumnos

end
