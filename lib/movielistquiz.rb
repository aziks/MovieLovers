require 'imdb'
require 'pry'
require_relative "./movies.rb"

class MovieList

  attr_reader :nueve_peliculas_con_poster

  def initialize 
    @nueve_peliculas_con_poster = []
  end

  def search_movies(keyword)
    searchresult = Imdb::Search.new(keyword)
    lista_peliculas = searchresult.movies
    i = 0

    while @nueve_peliculas_con_poster.length < 9
    if lista_peliculas[i].poster != nil 
        @nueve_peliculas_con_poster << Movie.new(
        lista_peliculas[i].title,
        lista_peliculas[i].poster,
        lista_peliculas[i].year)
        # binding.pry
    end
    i += 1
  end


end
end



 # busca = MovieList.new
 # busca.search_movies("pokemon")