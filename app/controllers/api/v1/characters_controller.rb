module Api
    module V1
        class CharactersController < ApplicationController
            def index
                render json: characters, each_serializer: CharacterSerializer, status: :ok
            end

            def show
                character

                render json: character, serializer: ShowCharacterSerializer::CharacterSerializer, status: :ok
            end

            def update
                update_character = Character.update(update_character_params)

                if update_character
                    render json: update_character, serializer: ShowCharacterSerializer::CharacterSerializer, status: :update                    
                else
                    render json: { error: "We can't update the data" }, status: :unprocessable_entity
                end
            end

            def create
                create_character = Character.new(creation_character_params)

                create_character.movie = movie
                if create_character.save
                    render json: create_character, serializer: ShowCharacterSerializer::CharacterSerializer, status: :created
                else
                    render json: { error: "We can't save your character" }, status: :unprocessable_entity
                end

            end

            def destroy
                destroy_charcter = Character.destroy
                
                if destroy_charcter
                    render json: { success: true }
                else
                    render json: { success: false }
                end
            end

            private
                
                def characters
                    @characters ||= fetch_characters
                end

                def fetch_characters
                    characters = Character.all
                    characters = characters.for_name(name) if name
                    characters = characters.for_age(age) if age
                    characters = characters.for_movie(movie) if movie
                    characters
                end

                def name
                    params[:name]
                end

                def age
                    params[:age]
                end

                def movie
                    params[:movie]
                end

                def character
                    @character ||= Character.find(params[:id])                
                end

                def creation_character_params
                    params.permit(
                        :name,
                        :age,
                        :weight,
                        :history,
                        :movie
                    )
                end

                def update_character_params
                    params.permit(
                        :name,
                        :age,
                        :weight,
                        :history,
                        :movie
                    )
                end
        end
    end
end    