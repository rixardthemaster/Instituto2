class Profesor < ActiveRecord::Base
  belongs_to :especialidad
  has_many :profesor_alumnos
  has_many :alumno, :through => :profesor_alumnos

  validates :nombreprof, presence: true
  validates :approf, presence: true
  validates :correo, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :correo, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
  validates :especialidad, presence: true
end
