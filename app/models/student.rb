class Student < ActiveRecord::Base
    validates :height, numericality: { only_integer: true, message: "Please provide a valid number" }
    validates :weight, numericality: { only_integer: true, message: "Please provide a valid number" }
    validates :name, :height, :weight, :color, :gpa, :email, presence: true
    validates :email, length: { minimum: 6, message: "email is too short"}
end
