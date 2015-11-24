class Alumno < ActiveRecord::Base
  has_many :profesor_alumnos
  has_many :profesor, :through => :profesor_alumnos

  validates :nombreal, presence: true
  validates :appal, presence: true

end
