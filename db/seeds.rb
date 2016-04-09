User.create!([
  {email: "ninawinkler@me.com", password: "password", firstname: "Nina", lastname: "Winkler", admin: false},
  {email: "admin@admin.com", password: "password", firstname: "Sarah", lastname: "Johnson", admin: true},
  {email: "jim@me.com", password: "password", firstname: "Jim", lastname: "Ackles", admin: false},
  {email: "sarah@me.com", password: "password", firstname: "Sarah", lastname: "Lakewood", admin: false},
  {email: "movie@me.com", password: "password", firstname: "Lisa", lastname: "Spring", admin: false},
  {email: "davey@me.com", password: "password", firstname: "Davey", lastname: "Feimer", admin: false},
  {email: "davey@helps.com", password: "password", firstname: "David", lastname: "Leigh", admin: false},
  {email: "boolean@me.com", password: "password", firstname: "Julian", lastname: "Prince", admin: true},
  {email: "newuser@me.com", password: "password", firstname: "Margaret", lastname: "Peters", admin: false},
  {email: "Jill@me.com", password: "password", firstname: "Jill", lastname: "Savage", admin: false},
  {email: "newadmin@admin.com", password: "password", firstname: "Darcy", lastname: "Fell", admin: true},
  {email: "scott@me.com", password: "password", firstname: "Scott", lastname: "Chattertown", admin: false},
  {email: "jessica@me.com", password: "password", firstname: "Jessica", lastname: "James", admin: false},
  {email: "jen@me.com", password: "password", firstname: "Jennifer", lastname: "West", admin: false},
  {email: "tim@me.com", password: "password", firstname: "Tim", lastname: "Finley", admin: false},
  {email: "chris@me.com", password: "password", firstname: "Chris ", lastname: "Nixon", admin: true},
  {email: "don@me.com", password: "password", firstname: "Don", lastname: "Finatzer", admin: true}
])
Movie.create!([
  {title: "Room", director: "Lenny Abrahamson", runtime_in_minutes: 118, description: "A kidnapped mother and son escape from a room in which they have endured imprisonment for the entirety of her son's life. Upon breaking free from its confines, they experience a dramatic homecoming; provoking insight into the depths of imagination and the extent of a mother's love.", poster_image_url: "http://www.imdb.com/title/tt3170832/?ref_=tt_rec_tt", release_date: "2015-12-12 00:00:00", image: "room.jpeg"},
  {title: "Spotlight", director: "Tom McCarthy", runtime_in_minutes: 128, description: "The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.", poster_image_url: "http://www.imdb.com/title/tt1895587/?ref_=tt_rec_tt", release_date: "2016-01-12 00:00:00", image: "Spotlight.jpg"},
  {title: "Fight Club", director: "David Fincher", runtime_in_minutes: 138, description: "An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more...", poster_image_url: "", release_date: "1999-10-19 00:00:00", image: "p23069_p_v8_ad.jpg"},
  {title: "The Danish Girl", director: "Tom Hooper", runtime_in_minutes: 119, description: "A fictitious love story loosely inspired by the lives of Danish artists Lili Elbe and Gerda Wegener. Lili and Gerda's marriage and work evolve as they navigate Lili's groundbreaking journey as a transgender pioneer.", poster_image_url: "", release_date: "2016-01-22 00:00:00", image: "danish.jpeg"},
  {title: "The Big Short", director: "Adam McKay", runtime_in_minutes: 130, description: "Four denizens in the world of high-finance predict the credit and housing bubble collapse of the mid-2000s, and decide to take on the big banks for their greed and lack of foresight.", poster_image_url: "http://www.imdb.com/title/tt1596363/?ref_=tt_rec_tti", release_date: "2015-12-23 00:00:00", image: "big_short.jpeg"},
  {title: "The Martian", director: "Ridley Scott", runtime_in_minutes: 148, description: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.", poster_image_url: "http://www.imdb.com/title/tt3659388/", release_date: "2015-10-02 00:00:00", image: "martian.jpeg"},
  {title: "The Wolf of Wall Street", director: "Martin Scorsese ", runtime_in_minutes: 180, description: "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.", poster_image_url: "http://www.imdb.com/title/tt0993846/?ref_=tt_rec_tt", release_date: "2013-12-23 00:00:00", image: "MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE_._V1_UX182_CR0_0_182_268_AL_.jpg"},
  {title: "Joy", director: "David O. Russell", runtime_in_minutes: 124, description: "Joy is the story of the title character, who rose to become founder and matriarch of a powerful family business dynasty.", poster_image_url: "http://www.imdb.com/title/tt2446980/", release_date: "2015-12-10 00:00:00", image: "download.jpeg"}
])
Review.create!([
  {user_id: 1, movie_id: 2, text: "Awesome film", rating_out_of_ten: 10},
  {user_id: 1, movie_id: 3, text: "Amazing Film", rating_out_of_ten: 9},
  {user_id: 1, movie_id: 4, text: "Very touching and beautiful.", rating_out_of_ten: 10},
  {user_id: 1, movie_id: 5, text: "Insightful and interesting. A great film.", rating_out_of_ten: 8},
  {user_id: 2, movie_id: 4, text: "What an unbelievable story!  Well-acted and engaging all the way through. I can't praise enough.", rating_out_of_ten: 9},
  {user_id: 2, movie_id: 20, text: "Great film but not quite what it's cracked up to be. Decent story and beautiful cinematography but it didn't blow me away.", rating_out_of_ten: 7},
  {user_id: 2, movie_id: 17, text: "A classic. Pitt at his finest. Definitely one of the best films of all time!", rating_out_of_ten: 10},
  {user_id: 2, movie_id: 21, text: "Entertaining, interesting and engaging but TOO LONG. The story could have been told in 2 hours. Still, a great film to watch if you have the time.", rating_out_of_ten: 8},
  {user_id: 20, movie_id: 4, text: "I'm not one to cry, but this film had be teary-eyed. Such a tragic story and told so beautifully. ", rating_out_of_ten: 8},
  {user_id: 20, movie_id: 5, text: "A controversial story told with great integrity. I will definitely watch this a second time.", rating_out_of_ten: 7},
  {user_id: 20, movie_id: 18, text: "WOW! What a charming, beautiful film. Eddie Redmayne killed it and Alicia Vikander had you routing for them the whole way through. 10/10!", rating_out_of_ten: 10},
  {user_id: 4, movie_id: 19, text: "An entertaining film about the business world. Very accurate, witty and interesting. The All-Star cast had great chemistry and genuine, human flaws.", rating_out_of_ten: 7},
  {user_id: 4, movie_id: 5, text: "Mind-boggling and interesting film. Really makes you think about humanity. ", rating_out_of_ten: 7},
  {user_id: 23, movie_id: 22, text: "Funny, charming and a delight to watch. Jennifer Lawrence is exhilarating. ", rating_out_of_ten: 9}
])
