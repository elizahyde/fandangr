# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    movies = Movie.create([
      { name: 'The Lone Ranger', duration: 149, rating: "PG-13",
        synopsis: "Native American spirit warrior Tonto and man of the
        law John Reid join forces to battle greed and corruption." },

      { name: 'The Heat', duration: 117, rating: "R",
        synopsis: "Two very different law enforcement officers
        must team up to take down a ruthless drug lord." },

      { name: 'White House Down', duration: 137, rating: "PG-13",
        synopsis: "A police man must save The President of the United
        States when the White House falls under attack." },

      { name: 'Monsters University', duration: 102, rating: "G",
        synopsis: "How Mike and Sulley overcame their differences
        and became the best of friends." },


      { name: 'World War Z', duration: 115, rating: "PG-13",
        synopsis: "A U.N. employee races against the clock to stop a
        zombie outbreak." },

      { name: 'Man of Steel', duration: 153, rating: "PG-13",
        synopsis: "Young reporter Clark Kent roams the world covering
        news stories but returns home to face his destiny - to become Superman." }


      ])


    tickets =  40.times do |ticket|
     x = 0,
     Ticket.create(
     {  date: DateTime.strptime("07/14/2013", "%m/%d/%Y"),
        movie_id: 1,
        seat: (x+= 1),
        time: DateTime.strptime("8:00", "%H:%M") } )

  end

  movies.each do |movie|



  end
