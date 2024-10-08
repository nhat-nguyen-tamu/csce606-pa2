# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
  release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  { title: 'Blade Runner', rating: 'R',
    release_date: '25-Jun-1982' },
  { title: 'A Minecraft Movie', rating: 'PG',
    release_date: '4-Apr-2025' },
  { title: 'Apocalypto', rating: 'R',
    release_date: '8-Dec-2006' }
]

more_movies.each do |movie|
  Movie.find_or_create_by!(movie)
end
