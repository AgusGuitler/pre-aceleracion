module Api
    module V1
        module ShowCharacterSerializer
            class CharacterSerializer < ApplicationSerializer
                attributes :id,
                           :name,
                           :image,
                           :age,
                           :weight,
                           :history

                has_one :movie, serializer: MovieSerializer         
            end
        end
    end
end