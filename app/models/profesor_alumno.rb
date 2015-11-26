class ProfesorAlumno < ActiveRecord::Base
  belongs_to :profesor
  belongs_to :alumno


  validates :profesor, presence: true
  validates :alumno, presence: true


end
