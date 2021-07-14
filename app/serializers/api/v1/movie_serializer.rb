module Api
    module V1
        class MovieSerializer < ApplicationSerializer
            attributes :id,
                       :title,
                       :date_of_creation,
                       :image
        end
    end

end
