class Character < ApplicationRecord
    belongs_to :movie

    validates :name,
              :age,
              :weight,
              :history,
              presence: true
    
    validates :age, numericality: { only_integer: true }
    validates :weight, numericality: true
    
    scope :for_name, -> (name) { where name: name }
    scope :for_age, -> (age) { where age: age }
    scope :for_movie, -> (movie) { where movie: movie }
end
