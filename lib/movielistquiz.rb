require 'imdb'
require 'pry'

class MovieList

  attr_reader :nueve_peliculas_con_poster

  def initialize 
    @pelis_con_poster = []
    @nueve_peliculas_con_poster = []
  end

  def search_movies(keyword)
    searchresult = Imdb::Search.new(keyword)
    lista_peliculas = searchresult.movies
    i = 0

    while @nueve_peliculas_con_poster.length < 9
    if lista_peliculas[i].poster != nil 
      @nueve_peliculas_con_poster << lista_peliculas[i]
    end
    i += 1
  end
# binding.pry

end
end



 # busca = MovieList.new
 # busca.search_movies("pokemon")