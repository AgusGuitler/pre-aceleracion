module Api
    module V1
        class CharactersController < ApplicationController
            def index
                characters = Character.all

                render json: characters, each_serializer: CharacterSerializer, status: :ok
            end

            def show
                character

                render json: character, serializer: ShowCharacterSerializer::CharacterSerializer, status: :ok
            end

            def update
            end

            def create
            end

            def destroy
            end

            private
                def character
                    @character ||= Character.find(params[:id])                
                end

        end
    end
end    