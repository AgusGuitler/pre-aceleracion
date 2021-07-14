module Api
    module V1
        class MoviesController < ApplicationController
            def index
                render json: movies, each_serializer: MovieSerializer, status: :ok
            end

            def show
                movie

                render json: movie, serializer: ShowMovieSerializer::MovieSerializer, status: :ok
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
                
                def movies
                    @movies ||= fetch_movies
                end

                def fetch_movies
                    movies = Movie.all
                    movies = movies.for_title(title) if title
                    movies = movies.for_genre(genre) if genre
                    movies = movies.by_order(order) if order
                    movies
                end

                def title
                    params[:title]
                end

                def genre
                    params[:genre]
                end

                def order
                    params[:order]
                end

                def movie
                    @movie ||= Movie.find(params[:id])                
                end

                #def creation_character_params
                #    params.permit(
                #        :name,
                #        :age,
                #        :weight,
                #        :history,
                #        :movie
                #    )
                #end

                #def update_character_params
                #    params.permit(
                #        :name,
                #        :age,
                #        :weight,
                #        :history,
                #        :movie
                #    )
                #end
        end
    end
end    