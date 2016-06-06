class Student < ActiveRecord::Base
    validates :height, numericality: { only_integer: true }
    validates :weight, numericality: { only_integer: true }
    validates :name, :height, :weight, :color, :gpa, :email, presence: true
end
