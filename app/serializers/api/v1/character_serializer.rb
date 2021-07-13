module Api
    module V1
        class CharacterSerializer < ApplicationSerializer
            attributes :id,
                       :name,
                       :image
        end
    end

end
