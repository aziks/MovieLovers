class MovieList

  def initialize 
    @showmoviesresult = []
  end

  def search_movies(peli)
    @showmoviesresult = Imdb::Search.new(peli)
  end

  def show_results
    

  end
​
end