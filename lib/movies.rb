class Movie

  attr_reader :titulo, :poster, :year

  def initialize(titulo, poster, year)
    @titulo = titulo
    @poster = poster
    @year = year
  end

end