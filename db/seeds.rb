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


movies.each do |movie|
  seatcount = 0
  datecount = 0
  timecount = 0

  40.times do |ticket|
    movie.tickets.create({
      date: "July 14 2014",
      seat: (seatcount+= 1),
      time: "3:30 pm"
      })
  end
  seatcount = 0
  40.times do |ticket|
    movie.tickets.create({
      date: "July 14 2014",
      seat: (seatcount+= 1),
      time: "5:30 pm"
      })
  end


  seatcount = 0
  40.times do |ticket|
    movie.tickets.create({
      date: "July 14 2014",
      seat: (seatcount+= 1),
      time: "7:30 pm"
      })
  end
  seatcount = 0
  40.times do |ticket|
    movie.tickets.create({
      date: "July 14 2014",
      seat: (seatcount+= 1),
      time: "9:30 pm"
      })
  end
  seatcount = 0
  40.times do |ticket|
    movie.tickets.create({
      date: "July 14 2014",
      seat: (seatcount+= 1),
      time: "11:30 pm"
      })
  end

end