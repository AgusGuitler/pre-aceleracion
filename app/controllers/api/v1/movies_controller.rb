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
                movie

                if movie
                    render json: movie, serializer: ShowMovieSerializer::MovieSerializer, status: :ok                    
                else
                    render json: { error: "We can't update the data" }, status: :unprocessable_entity
                end
            end

            def create
                create_movie = Movie.new(creation_movie_params)

                create_movie.genre = associated_genre
                if create_movie.save
                    render json: create_movie, serializer: ShowMovieSerializer::MovieSerializer, status: :created
                else
                    render json: { error: "We can't save your movie" }, status: :unprocessable_entity
                end

            end

            def destroy
                if movie.present?
                    movie.destroy
                end

                head :no_content
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

                def associated_genre
                    @genre ||= Genre.find_by(name: params[:genre])
                end

                def creation_movie_params
                    params.permit(
                        :title,
                        :date_of_creation,
                        :qualification,
                        :image
                    )
                end
        end
    end
end    