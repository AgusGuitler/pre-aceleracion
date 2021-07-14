module Api
    module V1
        module ShowMovieSerializer
            class MovieSerializer < ApplicationSerializer
                attributes :id,
                           :title,
                           :date_of_creation,
                           :qualification,
                           :genre,
                           :image
                
                has_many :characters , serializer: CharacterSerializer
                has_one :genre
            end
        end
    end
end
