class Alumno < ActiveRecord::Base
  has_many :profesor_alumnos
  has_many :profesor, :through => :profesor_alumnos
  
end
