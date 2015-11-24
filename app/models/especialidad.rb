class Especialidad < ActiveRecord::Base
has_many :profesor

validates :nombre, presence: true


end
