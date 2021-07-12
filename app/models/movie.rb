class Movie < ApplicationRecord
    belongs_to :genre
    has_many :characters

    validates :title,
              :date_of_creation,
              :qualification,
              presence: true
              
    validates :qualification, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to:5}
end
