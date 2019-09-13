class Student < ApplicationRecord
  validates_presence_of :name, :grade
  validates_numericality_of :grade, only_integer: true
  validates_inclusion_of :grade, in: 0..100
end
