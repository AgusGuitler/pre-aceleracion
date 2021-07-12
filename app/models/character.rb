class Character < ApplicationRecord
    belongs_to :movie

    validates :name,
              :age,
              :weight,
              :history,
              :movie,
              presence: true
    
    validates :age, numericality { only_integer: true}
    validates :weight, numericality: true
    
end
