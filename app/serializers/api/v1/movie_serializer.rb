module Api
    module V1
        class MovieSerializer < ApplicationSerializer
            attributes :id,
                       :title,
                       :qualification,
                       :image
        end
    end

end
