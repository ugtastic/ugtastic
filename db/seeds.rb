[
  'Aaron Bedra', 'Aaron Holbrook', 'Aaron Kalin', 'Aaron Patterson', 'Adam Connor', 'Adam Grandy',
  'Adewale Oshineye', 'Adewale Oshinye', 'Adrian Cockcroft', 'Aino Vonge Corry', 'Alberto Silveira', 'Alex Rutkowski',
  'Alexander Dymo', 'Amanda Harlin', 'Amitai Schlair', 'Amy Kinney', 'Andrea Magnorsky', 'Andy Lester',
  'Andy Maleh', 'Angelique Martin', 'Anna Lear', 'Anthony Zinni', 'Arthur Kay', 'Ashe Dryden',
  'Avdi Grimm', 'Benjamin Oakes', 'Bill Scott', 'Bobby Johnson', 'Brad Nunnally', 'Brad Smith',
  'Brad Wilkening', 'Brian Marick', 'Brian Ray', 'Bryan Liles', 'Camille Fournier', 'Carina C. Zona',
  'Carl Erickson', 'Carlos Antonio da Silva', 'Chad Fowler', 'Charles Nutter', 'Charley Baker',
  'Chet Hendrickson', 'Chris Whitaker', 'Cindy Sprague', 'Clark Sell', 'Coleman Collins', 'Colin Jones',
  'Coraline Ada Ehmke', 'Corey Haines', 'Cory Foy', 'Courtney Hemphill', 'Culley Smith', 'Dan North',
  'Daniel X. O\'Neil', 'Dave Hoover', 'Dave Thomas', 'David Dickinson', 'David Heinemeier Hansson', 'Desi McAdam',
  'Dnyaneshwar Nerkar (Gyani)', 'Drew Shefman', 'Dustin Updyke', 'Emily Rosengren', 'Eric Kingery', 'Eric Macadie',
  'Erik Meijer', 'Ethan Gunderson', 'Evan Light', 'Evan Phoenix', 'Farrah Bostic', 'Fred George',
  'Fred Guime', 'Gary Bernhardt', 'Giles Bowkett', 'Ginny Hendry', 'Greg Baugues', 'Hadi Hariri',
  'Igor Polevoy', 'James Edward Gray', 'Jason Cranford Teague', 'Jason Ulaszek', 'Javier Ramirez', 'JC Grubbs',
  'Jen Lindner', 'Jen Myers', 'Jennifer Jones', 'Jeremy Green', 'Jesse Harlin', 'Jez Humble',
  'Jim Remsik', 'Jim Suchy', 'Joel Clermont', 'Joel Friedman', 'Joel Turnbull', 'John Jarosz',
  'Jon Buda', 'Jonathan Baltz', 'Jonathon Kresner', 'Justin Collins', 'Justin Gordon', 'Justin Love',
  'Justin Searls', 'Katrina Owen', 'Ken Auer', 'Kevin Zolkiewicz', 'Kiyoto Tamura', 'Kresten Thorup',
  'Kumar Mcmillan', 'Leah Silber', 'Leon Gersing', 'Leslie Borrell', 'Liz Abinante', 'Mandi Walls',
  'Mark Simpson', 'Martin Atkins', 'Matt Polito', 'Matt Ruby', 'Max De Marzi', 'Max Lancaster',
  'Melissa Castello', 'Micah Martin', 'Michael Eaton', 'Michael Ficarra', 'Michael Norton', 'Michael T. Nygard',
  'Mike Burton', 'Mike Busch', 'Mike Clement', 'Mike Jansen', 'Mike Lee', 'Mike Miller',
  'Mike Pack', 'Mike Stringer', 'Milan Dobrota', 'Niley Barros', 'Nitin Dhaware', 'Noel Rappin',
  'Obie Fernandez', 'Ola Bini', 'Pat Paasch', 'Patrick Welsh', 'Paul Baker', 'Rafael França',
  'Rainey Reitman', 'Randy Ellis', 'Ray Hightower', 'Rich Hickey', 'Richard Lee', 'Richard Schneeman',
  'Robert Martin', 'Rob Reynolds', 'Ron Jefferies', 'Ross Beehler', 'Russ Olsen', 'Russ Unger',
  'Ryan Briones', 'Ryan Gerry', 'Ryan Singer', 'Sam Serpoosh', 'Sandro Mancuso', 'Sarah Allen',
  'Sarah Gray', 'Scott Seely', 'Sean Massa', 'Sergio Pereira', 'Shay Howe', 'Sina Khanifar',
  'Stephen Anderson', 'Steve Kim', 'Steve Klabnik', 'Stuart Halloway', 'Tim Bray', 'Tim Murphy',
  'Tim Ottinger', 'Todd Larsen', 'Tom Brand', 'Tom Dale', 'Trek Glowacki', 'Trisha Gee',
  'Yehuda Katz', 'Zach Dennis', 'Zachary Shaw', 'Zassmin Montes de Oca'
].each do |name|
  Interviewee.find_or_create_by(name: name)
end

# Interviewee.all.each do |interviewee|
# YouTube::Video.where('slug ilike ?', "%#{interviewee.slug}%").first.interviewees << interviewee rescue nil
# end

# YouTube::Video.find_by(title: 'Charles Oliver Nutter').interviewees << Interviewee.find_by(name: 'Charles Nutter')
# YouTube::Video.find_by(title: 'Chris Whitaker').interviewees << Interviewee.find_by(name: 'Chris Whitaker')
# YouTube::Video.find_by(title: 'Daniel X Oneil').interviewees << Interviewee.find_by(name: 'Daniel X. O\'Neil')
# YouTube::Video.find_by(title: 'Interview with Evan Light founder DCamp at RailsConf 2014').interviewees << Interviewee.find_by(name: 'Evan Light')
# YouTube::Video.find_by(title: 'Jen Myers').interviewees << Interviewee.find_by(name: 'Jen Myers')
# YouTube::Video.find_by(title: 'Justin Searls').interviewees << Interviewee.find_by(name: 'Justin Searls')
# YouTube::Video.find_by(title: 'Ray Hightower').interviewees << Interviewee.find_by(name: 'Ray Hightower')
# YouTube::Video.find_by(title: 'Robreynolds').interviewees << Interviewee.find_by(name: 'Rob Reynolds')
# YouTube::Video.find_by(title: 'Yehuda Katz & Tom Dale: The Lost Interview').interviewees << Interviewee.find_by(name: 'Yehuda Katz')
# YouTube::Video.find_by(title: 'Yehuda Katz & Tom Dale: The Lost Interview').interviewees << Interviewee.find_by(name: 'Tom Dale')
# YouTube::Video.find_by(title: '[REPLACED] Liz Abinante co-leader Girl Develop It Chicago').interviewees << Interviewee.find_by(name: 'Liz Abinante')
# YouTube::Video.find_by(title: '[ROUGH CUT] Interview with Charles Nutter aka the JRuby Guy').interviewees << Interviewee.find_by(name: 'Charles Nutter')
