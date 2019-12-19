-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Ford Field', 
'2000 Brush St, Detroit, MI, 48226', 
'42.340268', 
'-83.045560',
'Sports Arena',
'Ford Field is the premier family entertainment destination committed to providing unparalleled service by exceeding the expectations of 
each of our guests. Ford Field works to continually create unique and exciting experiences in a fun, friendly environment.', 
'https://www.fordfield.com/', 
'ford-field.jpg', 
'Closed','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','9:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Comerica Park', 
'2100 Woodward Ave, Detroit, MI, 48201', 
'42.339181', 
'-83.048541',
'Sports Arena',
'A unique and exciting entertainment experience! Perfectly situated and centrally located in Downtown Detroit, 
just minutes from Detroit Metro airport and the surrounding Detroit suburbs, 
Comerica Park is one of the most unique venues of the Midwest.', 
'http://www.comericapark.com/', 
'comerica-park.jpg', 
'Game days 10:00 AM - 30 minutes after the end of game','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM',
'10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Little Caesars Arena', 
'2645 Woodward Ave, Detroit, MI, 48201', 
'42.341203', 
'-83.055243',
'Sports Arena',
'Little Caesars Arena in The District Detroit serves as the home of the Detroit Red Wings, Detroit Pistons and 
countless other sports, entertainment and community events. Little Caesars Arena also features state-of-the-art technology, 
fan amenities and active community spaces like the Via, the BELFOR Training Center and the Chevrolet Plaza.', 
'http://www.littlecaesarsarena.com/', 
'little-caesars-arena.jpg', 
'Game & event days 9:30 AM - 30 minutes before end of event',
'9:30 AM - 6:00 PM','9:30 AM - 6:00 PM','9:30 AM - 6:00 PM','9:30 AM - 6:00 PM','9:00 AM - 6:00 PM', '9:30 AM - 6:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Lexus Velodrome', 
'601 Mack Ave, Detroit, MI, 48201', 
'42.351526', 
'-83.051121',
'Sports Arena',
'Ride year-round INSIDE the Lexus Velodrome, the newest addition to the sports scene in Detroit. Racers on bikes with no brakes, fearlessly face the 
challenge of 50 degree banking and wildly fast speeds as they negotiate the 1/10th mile cycling oval in hotly contested weekend races. Spectators 
enjoy an up close experience on the elevated Skywalk or seated comfortably in infield suites/seats.', 
'https://lexusvelodrome.com/', 
'lexus-velodrome.jpg', 
'12:00 PM - 4:00 PM','8:00 AM - 8:00 PM', '8:00 AM - 8:00 PM','8:00 AM - 8:00 PM','8:00 AM - 8:00 PM','8:00 AM - 8:00 PM','9:00 AM - 6:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Institute of Arts (DIA)', 
'5200 Woodward Ave, Detroit, MI, 48202', 
'42.359689', 
'-83.064566',
'Arts and Culture',
'The Detroit Institute of Arts, located in Midtown Detroit, Michigan, has one of the largest and most significant art 
collections in the United States. With over 100 galleries, it covers 658,000 square feet with a major renovation and expansion project 
completed in 2007 that added 58,000 square feet.', 
'https://www.dia.org/', 
'detroit-inst-arts.jpg', 
'10:00 AM - 5:00 PM','Closed','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','9:00 AM - 10:00 PM','10:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Charles H. Wright Museum', 
'315 E Warren, Detroit, MI, 48201', 
'42.359461', 
'-83.060913',
'Arts and Culture',
'The Charles H. Wright Museum of African American History is located in the Cultural Center of the U.S. city of Detroit, Michigan. 
Founded in 1965, the museum holds the largest permanent exhibit on African-American culture in the world.', 
'https://www.thewright.org/', 
'charles-h-wright-museum.jpg', 
'1:00 PM - 5:00 PM','Closed','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Motown Museum', 
'2648 W Grand Blvd, Detroit, MI, 48208', 
'42.364701', 
'-83.088438',
'Arts and Culture',
'The Motown Museum, which was founded by Esther Gordy Edwards in 1985, is one of the most popular tourist destinations in Southeast Michigan. Visitors come from
across America and throughout the world to stand in Studio A, where their favorite artists and groups recorded much-loved music, and to view the restored upper 
flat where Berry Gordy lived with his young family during the earliest days of the company.', 
'https://www.motownmuseum.org/', 
'motown-museum.jpg', 
'Closed','Closed','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Historical Museum', 
'5401 Woodward Ave, Detroit, MI, 48202', 
'42.359818', 
'-83.067812',
'Arts and Culture',
'The Detroit Historical Museum is located at 5401 Woodward Avenue in the Cultural Center Historic District in Midtown Detroit. It chronicles the history
of the Detroit area from cobblestone streets, 19th century stores, the auto assembly line, toy trains, fur trading from the 18th century, and much more..', 
'https://detroithistorical.org/', 
'detroit-historical-museum.jpg', 
'1:00 PM - 5:00 PM','Closed','9:30 AM - 4:00 PM','9:30 PM - 4:00 PM','9:30 AM - 8:00 PM','9:30 AM - 4:00 PM','10:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Museum of Contemporary Art Detroit', 
'4454 Woodward Ave, Detroit, MI, 48201', 
'42.353648', 
'-83.061861',
'Arts and Culture',
'The Museum of Contemporary Art Detroit is a non-collecting contemporary art museum located in the cultural center of Detroit. \"MOCAD 
is where adventurous minds encounter the best in contemporary visual, literary, music and performing arts\"', 
'https://mocadetroit.org/', 
'mocad.jpg', 
'11:00 AM - 5:00 PM','Closed','11:00 AM - 5:00 PM','11:00 PM - 5:00 PM','11:00 AM - 8:00 PM','11:00 AM - 8:00 PM','11:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Michigan Science Center', 
'5020 John R St, Detroit, MI, 48202', 
'42.358710', 
'-83.062406',
'STEM Education',
'The Michigan Science Center (MiSci) is a unique, fun and dynamic hands-on museum, offering programs that inspire curious minds of all ages to discover, 
explore and appreciate science, technology and math in a fun, dynamic learning environment.', 
'https://www.mi-sci.org/',
'mi-science-center.jpg', 
'12:00 PM - 5:00 PM','Closed','10:00 AM - 3:00 PM','10:00 PM - 3:00 PM','10:00 AM - 3:00 PM','10:00 AM - 3:00 PM','10:00 AM - 5:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Tech Elevator', 
'440 Burroughs St, Detroit, MI, 48202', 
'42.365217', 
'-83.073021',
'STEM Education',
'Tech Elevator is an intensive in-person education provider helping individuals and companies acquire in-demand technology skills for the modern 
workforce. Through our 14-week, full-time coding bootcamps, we teach students from diverse backgrounds to become software developers while also 
helping them to build necessary career-readiness skills and career connections through our nationally recognized Pathway Program.

Founded in 2015, with a focus on quality and care in everything we do, we''re proud of our outcomes. As an early member of the Council on Integrity 
Results in Reporting (www.cirr.org), Tech Elevator has taken a proactive approach to transparency. Our results speak to our focus on quality and 
on student success which have earned us a leading national bootcamp position based on the job placement rate of our grads.', 
'https://www.techelevator.com/detroit',
'tech-elevator.jpg', 
'By appointment only','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','By appointment only'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'EcoTek', 
'461 Burroughs St, Detroit, MI, 48202', 
'42.364643', 
'-83.073026',
'STEM Education',
'Our program is focused on providing academically gifted students in middle school and high school with opportunities to participate in 
international science research projects.  The projects are very challenging and prepare the students for college-level opportunities.  
Research and development projects include: Alternative Energy, Environmental Conservation, Food Security, and Healthcare. As a requirement 
of joining ECOTEK, all student members must attend a summer science program at a major university.  We assist in helping students identify 
and select the program that is right for them.  Paticipating Universities have included Pre-Engineering programs at: Michigan Technological University, 
Michigan State University and University of Michigan.', 
'http://ecotek-us.com/',
'ecotek.jpg', 
'By appointment only','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','By appointment only'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Area Pre-College Engineering Program (DAPCEP)', 
'2111 Woodward Ave, Detroit, MI, 48201', 
'42.337964', 
'-83.051588',
'STEM Education',
'Detroit Area Pre-College Engineering Program (DAPCEP) is a nonprofit organization with 40 years of experience partnering with universities, 
training programs, and K-12 school systems in order to connect youth to the best science, technology, engineering, and math (STEM) educational 
experiences in Michigan.

DAPCEP students are between the ages of 4 and 18, and live in southeast Michigan. They attend public, private, charter, and home schools and 
love to explore new environments and make life-long friends. We have a large and supportive parent & alumni community that strives to provide 
our youth with even more resources and opportunities. We hope you''ll consider joining the DAPCEP family!', 
'http://www.dapcep.org/',
'dapcep.jpg', 
'By appointment only','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','By appointment only'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Historic Fort Wayne', 
'6325 W Jefferson Ave, Detroit, MI, 48209', 
'42.299916', 
'-83.095974',
'Historic Buildings and Landmarks',
'Fort Wayne played an important role as a primary induction center for Michigan troops in every U.S. conflict from the Civil War to the Vietnam War. 
Today, you can visit the original 1848 limestone barracks building, the original 1845 star fort, the 
restored Commanding Officer house, the Spanish-American War guard house, an ancient Native American burial mound, and the Tuskegee Airmen Museum.', 
'https://www.historicfortwaynecoalition.com/', 
'historic-fort-wayne.jpg', 
'10:00 AM - 4:00 PM','Closed','Closed','Closed','Closed','Closed','10:00 AM - 4:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Spirit of Detroit', 
'2 Woodward Ave, Detroit, MI, 48226', 
'42.329525', 
'-83.044585',
'Historic Buidings and Landmarks',
'The Spirit of Detroit is a large, bronze monument that represents the city of Detroit, featuring a large seated human figure holding a family and golden 
orb aloft in its hands. This icon signifies hope, progress, and the \"spirit of man\". It was originally cast in Bronze in Oslo, Norway, and covered with 
acid to oxidize the metal, giving it a green hue. When work was complete, the statue was wrapped in protective fabric, surrounded by a supportive framework 
and loaded face down onto a German freighter for its journey from Oslo to Detroit.', 
'https://historicdetroit.org/buildings/spirit-of-detroit', 
'spirit-of-detroit.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Fist', 
'5 Woodward Ave, Detroit, MI, 48226', 
'42.328961', 
'-83.044568',
'Historic Buidings and Landmarks',
'As a tribute to Detroit-native heavyweight champion Joe Louis (AKA The Brown Bomber), a giant fist monument was installed there in 1987. Designed by sculptor 
Robert Graham, the 24-foot arm-and-fist is suspended 24 feet above the ground inside of a bronze pyramid.', 
'http://www.robertgraham-artist.com/civic_monuments/joe_louis.html', 
'the-fist.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Apparatus Room', 
'250 W Larned Street, Detroit, MI, 48226', 
'42.328598', 
'-83.048384',
'Food and Drink',
'Chic yet approachable. Historic while tastefully modern. The Apparatus Room bridges the old and the new, offering iconic New American cuisine rooted in 
Midwestern ingredients, as well as thoughtful cocktails crafted by accomplished mixologists. We invite you to step away from the Downtown bustle, enjoy a 
fine meal and the easy taste of an Old Foundation, and relax to the homely chatter of new friends.', 
'https://detroitfoundationhotel.com/apparatus-room/', 
'apparatus-room.jpg', 
'6:30 AM - 9:00 PM','6:30 AM - 10:00 PM', '6:30 AM - 10:00 PM','6:30 AM - 10:00 PM','6:30 AM - 10:00 PM','6:30 AM - 10:00 PM','6:30 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Z''s Villa', 
'42 Piquette, Detroit, MI, 48202', 
'42.366468', 
'-83.069684',
'Food and Drink',
'Casual American restaurant offering a seasonal patio with outdoor horseshoes & beach volleyball.', 
'http://zsvilladet.com/', 
'zs-villa.jpg', 
'Closed','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 1:00 AM','11:00 AM - 12:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Buddy''s Pizza',
'1565 Broadway Street, Detroit, MI, 48226', 
'42.336315', 
'-83.049536',
'Food and Drink',
'Located in a 7,000-sqaure-foot space inside the Madison Building, Buddy''s 16th location will seat around 225 guests with patio seating 
in the summer. The restaurant features a mixture of four-top table, booths, and bar seating as well as a large table for bigger groups. 
The west side of the restaurant is also outfitted with a walk-up counter called Buddy''s by the Square, which will serve quick, all-corner 
slices for customers on their lunch breaks or grabbing a bite on the way to the stadium.', 
'https://buddyspizza.com/downtown-detroit/', 
'buddys-pizza.png', 
'11:00 AM - 9:00 PM','11:00 AM - 10:00 PM', '11:00 AM - 10:00 PM','11:00 AM - 10:00 PM','11:00 AM - 10:00 PM','11:00 AM - 1:00 AM','11:00 AM - 1:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'American Coney Island',
'114 Michigan Ave, Detroit, MI, 48226', 
'42.331534', 
'-83.048713',
'Food and Drink',
'The American Coney Island Hot Dog has been a favorite with Detroiters and visitors for a century. The reasons for the great popularity of the 
American Coney Island is the high quality, specially-seasoned, natural skin casing hot dog from Dearborn Sausage and our own Keros family secret 
recipe Coney Island Chili Sauce developed decades ago. Add to that a topping of fine mustard and sweet chopped onions that is the final touch to 
the distinctive overall taste and flavor of the American Coney Island Hot Dog. Served in a warm steamed bun, it''s no wonder the American Coney 
Island Hot Dog has been such a tantalizing treat that''s still hard to beat after all these years!', 
'http://www.americanconeyisland.com/home.htm', 
'american-coney.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Lafayette Coney Island',
'118 W Lafayette Ave, Detroit, MI, 48226', 
'42.331493', 
'-83.048856',
'Food and Drink',
'This iconic, cash only Downtown joint has served up classic chili topped hot dogs since the 1930s, alongside heaping portions of loaded fries, 
loose meat burgers and stories of a legendary rivalry with the next door American Coney Island. Formica tables, a long lunch counter, tiled walls 
and cooks shouting orders add plenty of old school charm to the no frills diner.', 
'https://visitdetroit.com/profile/lafayette-coney-island/', 
'lafayette-coney.jpg', 
'9:00 AM - 3:00 AM','9:00 AM - 3:00 AM','9:00 AM - 3:00 AM','9:00 AM - 3:00 AM','9:00 AM - 3:00 AM','8:00 AM - 4:00 AM','8:00 AM - 4:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Bert''s Marketplace',
'2727 Russell, Detroit, MI, 48207', 
'42.347333', 
'-83.041479',
'Food and Drink',
'Anyone can show up here. Detroit''s only late night jazz club serving up Cajun catfish and red beans and rice all night long. It''s not common to 
find a bar where everyone seems to know each other and yet newcomers don''t feel excluded. Dozens of regulars turn up Thursdays for the open mic 
jazz jam sessions. Bert''s serves the music fans bargain-price soul food from rows of steam tables: meat and two sides for nine bucks, or up to 
$25 for a whole slab of ribs. In keeping with Bert''s bare-bones, working-class atmosphere, their food is more down-home than much of the soul 
food you find in restaurants, which has often been upgraded from its humble origins.', 
'https://www.bertsentertainmentcomplex.com/food-menu', 
'berts-marketplace.jpg', 
'7:00 AM - 12:00 AM','7:00 AM - 12:00 AM','7:00 AM - 12:00 AM','7:00 AM - 12:00 AM','7:00 AM - 12:00 AM','7:00 AM - 3:00 AM', '7:00 AM - 3:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Hockeytown Cafe',
'2301 Woodward Ave, Detroit, MI, 48201', 
'42.339058', 
'-83.052426',
'Bars',
'With over 30 flat screen TVs throughout three floors, vintage motorcycles climbing the walls, a variety of private entertainment spaces and 
unique Detroit Red Wings and Tigers memorabilia, Hockeytown Cafe was voted the No. 1 sports bar in Detroit for three consecutive years by Detroit.
CityVoter.com, and was voted the No. 2 sports bar in the country by ESPN2. With the ability to accommodate groups from up to 500 people in-house 
and up to 1,000 with our outdoor patio, Hockeytown Cafe is the perfect place to host a private party or gathering for a pre or post-game meal. 
Hockeytown Cafe is also home to the City Theatre, an intimate 430-seat venue which hosts a variety of shows from single comedy acts to off-Broadway 
productions.', 
'http://hockeytowncafe.com/', 
'hockeytown.jpg', 
'Hours based on events and games','Hours based on events and games','11:00 AM - 11:00 PM','11:00 AM - 11:00 PM','11:00 AM - 11:00 PM','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Tony V''s Tavern',
'5756 Cass Ave, Detroit, MI, 48202', 
'42.362364', 
'-83.069837',
'Bars',
'Located in Midtown Detroit in the midst of the Wayne State University Community, Tony V''s Tavern is a casual place to hang out with friends, 
catch your favorite sports team in action on one of the large screens or celebrate passing that mid-term or final with your classmates. 
We specialize in a thin crust New York Style pizza. Our menu also features delicious dinners, burgers, wings, sandwiches, salads and more.

We offer 9 beers on tap, mainly Michigan craft beers, along with a large assortment of bottled beers. Our bar also features an assortment of wines 
and top shelf liquors for your favorite mixed drinks. Enjoy our outdoor patio in the spring and summer.', 
'http://tonyvstavern.com/', 
'tony-vs.jpg', 
'Closed','11:00 AM - 12:00 AM', '11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 1:00 AM','11:00 AM - 1:00 AM','11:00 AM - 1:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Roasting Plant',
'5756 Cass Ave, Detroit, MI, 48202', 
'42.362364', 
'-83.069837',
'Coffee Shop',
'Whether you are a coffee connoisseur or just curious, we''re inviting everyone to join us on our just roasted quest. Order fresh 
beans online or come by one of our roastery cafes where every cup is quickly ground and brewed to order from any bean or blend of 
up to four, or simply pop in for that espresso on the go. Whichever way, we guarantee the best tasting cup you''ve ever had. 
Every time.

Just Roasted. Just Brewed. Just for You.', 
'https://roastingplant.com/', 
'roasting-plant.jpg', 
'8:00 AM - 7:00 PM','6:00 AM - 7:30 PM','6:00 AM - 7:30 PM','6:00 AM - 7:30 PM','6:00 AM - 7:30 PM','6:00 AM - 9:00 PM','7:00 AM - 9:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Bottom Line Coffee House',
'Beethoven Apts, 4474 3rd Ave, Detroit, MI, 48201', 
'42.351438', 
'-83.069146',
'Coffee Shop',
'A family owned, neighborhood coffeehouse featuring the best local bakery products and the best coffees from around the world, 
locally roasted and prepared with love.', 
'https://roastingplant.com/', 
'bottom-line.jpg', 
'8:30 AM - 5:00 PM','8:30 AM - 8:00 PM','8:30 AM - 8:00 PM','Closed','8:30 AM - 8:00 PM','8:30 AM - 9:00 PM','8:30 AM - 9:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Dessert Oasis Coffee Roasters',
'1220 Griswold St, Detroit, MI, 48226', 
'42.332994', 
'-83.048949',
'Coffee Shop',
'Our goal os to serve you the best cup of coffee, every second of every day. We''re able to achieve this through careful planning and
intense training, from farm to cup.

We strive to deliver an unrivaled coffee, dessert, and entertainment experience through close attention to detail, an unbelievable
knack for quality, and intense love for our communities.', 
'https://www.docr.coffee/',
'dessert-oasis.jpg', 
'9:00 AM - 8:00 PM','6:00 AM - 9:00 PM','6:00 AM - 9:00 PM','6:00 AM - 9:00 PM','6:00 AM - 9:00 PM','6:00 AM - 10:00 PM','7:00 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Great Lakes Coffee Roasting Company',
'3965 Woodward Ave, Detroit, MI, 48201', 
'42.350342', 
'-83.060228',
'Coffee Shop',
'Here, with each grind and every pour, in the conversations we have and the discussions we lead, we''re refining the grit of a great 
city into the ideas that are redefining what it means to be an even greater community. So whether you''re sipping from your favorite 
mug at home or savoring that last drop at one of our bars, know you''re part of our story. Because at The Great Lakes Coffee Roasting 
Company, it''s not just about what you''re drinking, It''s about the journey to your cup... And where we''ll go from there.', 
'https://greatlakescoffee.com/', 
'great-lakes-coffee.jpg', 
'10:00 AM - 8:00 PM','7:00 AM - 11:00 PM','7:00 AM - 11:00 PM','7:00 AM - 11:00 PM','7:00 AM - 11:00 PM','7:00 AM - 12:00 AM','7:00 AM - 12:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'New Order Coffee Roasters',
'3100 Woodward Ave, Detroit, MI, 48201', 
'42.345031', 
'-83.056010',
'Coffee Shop',
'Founded with a gleeful defiance to the status quo, New Order has a singular, dogmatic aim: to delight and energize your everyday life.
One thing we know in our bones is this: coffee is a personal thing. And we''re the coffee experts, but you...you''re our boss.  
So go ahead: let us help you make it your own.

It''s a new day. It''s a new order.', 
'https://www.newordercoffee.com/', 
'new-order-coffee.jpg', 
'8:30 AM - 6:00 PM','7:00 AM - 6:00 PM','7:00 AM - 6:00 PM','7:00 AM - 6:00 PM','7:00 AM - 6:00 PM','7:00 AM - 8:00 PM','8:00 AM - 8:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Fox Theatre',
'2211 Woodward Ave, Detroit, MI, 48201', 
'42.338839', 
'-83.052186',
'Theatre and Concert Venues',
'As the crown jewel of Detroit, the Fox Theatre has played host to some of the biggest names in show business and holds its ground as one of the 
top-grossing theatres of its size in the nation. The theatre is in the epicenter of The District Detroit.', 
'https://www.313presents.com/venues-events/fox-theatre', 
'fox-theatre.jpg', 
'Open on event days: 10:00 AM - 30 min before end','10:00 AM - 5:30 PM', '10:00 AM - 5:30 PM','10:00 AM - 5:30 PM',
'10:00 AM - 5:30 PM','10:00 AM - 5:30 PM','Open on event days: 10:00 AM - intermission'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Soundboard Detroit',
'2901 Grand River Ave, Detroit, MI, 48201', 
'42.338478', 
'-83.067423',
'Theatre and Concert Venues',
'Soundboard, an intimate live performance venue is located at MotorCity Casino Hotel. The venue features four bars and several private suites 
that are available to create an unforgettable live entertainment event. Complimentary valet and convenient self parking is also available.', 
'https://www.soundboarddetroit.com/default.aspx', 
'soundboard.jpg', 
'11:00 AM - 4:00 PM','Open on event days: 3:00 PM - intermission','Open on event days: 3:00 PM - intermission','3:00 PM - 8:00 PM',
'Open on event days: 3:00 PM - intermission', '5:00 PM - 10:00 PM','3:00 PM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'City Theatre',
'2301 Woodward Ave, Detroit, MI, 48201', 
'42.339012', 
'-83.052546',
'Theatre and Concert Venues',
'One of Detroit''s small theater gems, the intimate City Theatre is located in The District Detroit inside Hockeytown Cafe, next to the fabulous 
Fox Theatre. This 430-seat theater has the unique atmosphere of an off-Broadway house right in the heart of the Motor City and hosts concerts, 
plays, comedy shows and more', 
'https://www.313presents.com/venues-events/city-theatre', 
'city-theatre.jpg', 
'Closed','Closed', '10:00 AM - 5:30 PM','10:00 AM - 5:30 PM','10:00 AM - 5:30 PM','10:00 AM - 5:30 PM','10:00 AM - 5:30 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Opera House',
'1526 Broadway St, Detroit, MI, 48226', 
'42.336548', 
'-83.048606',
'Theatre and Concert Venues',
'The Detroit Opera House is an ornate opera house located at 1526 Broadway Street in Downtown Detroit, Michigan, within the Grand Circus Park Historic District. 
The 2,700-seat venue is the home of productions of the Michigan Opera Theatre and a variety of other events.', 
'https://michiganopera.org', 
'detroit-opera-house.jpg', 
'Event days: 10:00 AM through 30 min before event end','10:00 AM - 5:30 PM', '10:00 AM - 5:30 PM','10:00 AM - 5:30 PM',
'10:00 AM - 5:30 PM','10:00 AM - 5:30 PM','Open only on event days: 10:00 AM through intermission'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Fisher Theater',
'3011 W Grand Blvd, Detroit, MI, 48202', 
'42.369998', 
'-83.077272',
'Theatre and Concert Venues',
'The Fisher Building is a landmark skyscraper located in the heart of the New Center area of Detroit, Michigan. 
The ornate 30-story building, completed in 1928, is one of the major works of architect Albert Kahn, and is designed in an Art Deco style, 
faced with limestone, granite, and several types of marble.', 
'https://www.broadwayindetroit.com/plan-your-visit/fisher-theatre', 
'fisher-theatre.jpg', 
'Open only on event days: 12:00 PM until showtime','10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM','10:00 AM - 5:00 PM','10:00 AM - 5:00 PM',
'10:00 AM - 5:00 PM','Open only on event days: 10:00 AM until showtime'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Detroit Repertory Theater',
'13103 Woodrow Wilson St, Detroit, MI, 48238', 
'42.395434', 
'-83.109841',
'Theatre and Concert Venues',
'The Detroit Repertory Theatre is one of a handful of neighborhood based, union, professional theatres in this country that still thrives. 
It has become a model of grassroots artistic development and remains in the forefront of race transcendent casting - casting without regard 
to ethnicity, unless germane to the play.', 
'http://www.detroitreptheatre.com', 
'detroit-rep-theatre.jpeg', 
'Closed','10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM','10:00 AM - 5:00 PM','10:00 AM - 5:00 PM','10:00 AM - 5:00 PM','10:00 AM - 1:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Music Hall',
'350 Madison St, Detroit, MI, 48226', 
'42.337639', 
'-83.046000',
'Theatre and Concert Venues',
'Music Hall Center for the Performing Arts is magnificient, fully restored 1928 historic theatre, seating 1731 and holding 4 lounge areas, The Jazz Cafe and
3 Fifty Terrace on the rooftop. Music Hall plays host to a variety of non-theatrical events, including corporate annual meetings, parties, receptions, benefits, 
and fundraisers.  It has presented perhaps more world renowned performing artists than any other theatre in America.', 
'https://www.broadwayindetroit.com/plan-your-visit/music-hall', 
'music-hall.jpg', 
'Open only on event days: 2 hours prior to show - intermission','10:00 AM - 6:00 PM', '10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','Open only on event days: 2 hours prior to show - intermission'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Saint Andrew''s Hall (St. Andrew''s Hall)',
'431 E Congress St, Detroit, MI, 48226', 
'42.332293', 
'-83.041486',
'Theatre and Concert Venues',
'Built in 1907, Saint Andrew''s Hall was originally the meeting place for the Saint Andrew''s Scottish Society of Detroit, up until World War II 
when membership numbers fell off sharply. Not until the 1980s, was Saint Andrew''s more regularly documented for its historical legacy as a trendsetting, 
iconic music club that played host to such legendary breakthrough acts as Iggy Pop, Bob Dylan, the Red Hot Chili Peppers, in the 90s, to more 
contemporary acts in the 2000s such as John Mayer, Adele, and Eminem, solidifying its reputation as one of the most legendary and iconic music 
venues in the country through decades of groundbreaking music and unforgettable concert experiences. A legacy that continues on today. 
St. Andrew''s Hall offers a robust stage presence with audio equipment and visual lighting to match the passion of our visiting performance artists. ', 
'http://www.saintandrewsdetroit.com/', 
'saint-andrews.jpg', 
'Open only on event days - 1 hr prior to show - show start','12:00 PM - 5:00 PM','12:00 PM - 5:00 PM','12:00 PM - 5:00 PM' ,'12:00 PM - 5:00 PM','10:00 AM - 5:00 PM','Open only on event days: 1 hr prior to show - show start'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Senate Theater',
'6424 Michigan Ave, Detroit, MI, 48210', 
'42.331422', 
'-83.122872',
'Theatre and Concert Venues',
'The Senate Theater, home of the Detroit Theater Organ Society (DTOS), preserves the art of theater pipe organ music by maintaining and showcasing the Mighty 
Wurlitzer at concerts, film screenings, and events hosted at the theater. The Senate Theater opened in 1926, and was originally designed by renowned architect 
Christian W. Brandt, who designed a number of smaller Detroit houses like the Times Square Theater and LaSalle Garden Theater. Between 1930 and 1949, it was 
remodeled several times, and continued to operate until closing in 1958. In 1963, the former theater was acquired by the Detroit Theater Organ Society, who renovated it 
and reduced seating from 1,200 to about 900. They relocated the Mighty Wurlitzer organ (formerly the Fisher Theater organ) from the Iris Theater, where it was briefly 
kept in 1961-2, to the Senate Theater. Since then, the Senate Theater has been home to the DTOS, and features organ concerts. In December 2009 the theater closed
to complete updates, and in February 2011, volunteers began working on getting the theatre ready for a May 15, 2011 reopening. The Wurlitzer organ is again be a 
feature of its programs, and from May 2013, it the Senate Theater began screening movies again. ', 
'https://www.senatetheater.com/', 
'senate-theater.jpg', 
'6:00 PM - 11:00 PM','Closed','Closed','Closed','Closed','6:00 PM - 11:00 PM','6:00 PM - 11:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Cinema Detroit',
'4126 3rd Ave, Detroit, MI, 48201', 
'42.348584', 
'-83.067387',
'Theatre and Concert Venues',
'Cinema Detorit is metro Detroit''s only truly independent cinema, delivering an eclectic, quirky and quality mix of contemporary, indie, cult, genre, and 
classic movies in the heart of the city. Established in 2013, it is also the only first run 7-day-a-week movie theater in Greater Downtown. Located at 
4126 Third Street, 48201, we feature movies in a unique setting - the former Weber Furniture Store - and freshly made popcorn, Faygo pop, and occasionally 
other locally-made treats. ', 
'https://www.cinemadetroit.org/', 
'cinema-detroit.jpg', 
'3:00 PM - 10:00 PM','3:00 PM - 10:00 PM','3:00 PM - 10:00 PM','3:00 PM - 10:00 PM','3:00 PM - 10:00 PM','3:00 PM - 12:00 AM','3:00 PM - 12:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Aretha Franklin Ampitheater (formerly Chene Park)',
'2600 Atwater St, Detroit, MI, 48207', 
'42.333960', 
'-83.021448',
'Theatre and Concert Venues',
'Aretha Franklin Amphitheatre is the most exciting concert space in the heart of downtown Detroit. This unique waterfront venue is the epicenter of live 
entertainment in the summer for metropolitan Detroit.

The crowds that fill the 5,000 seats and 1,000 lawn spaces atop the hill are diverse and incredibly loyal. They''ve helped Aretha Franklin Amphitheatre 
become one of the top 100 concert venues in the world.', 
'https://thearetha.com/', 
'the-aretha-5k.jpg', 
'Closed','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','10:00 AM - 6:00 PM','11:00 AM - 3:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Fillmore',
'2115 Woodward Ave, Detroit, MI, 48201', 
'42.337937', 
'-83.051769',
'Theatre and Concert Venues',
'The Fillmore Detroit is a multi-use entertainment venue operated by Live Nation. Built in 1925, the Fillmore Detroit was known for most of its 
history as the State Theatre. The Fillmore Detroit features a theatre with a Grand Lobby and three levels of seating, as well as the State Bar & 
Grill which has a separate entrance and is open when the theatre is not hosting events. The Detroit Music Awards are held annually at The Fillmore 
 Detroit in April. The building was listed on the National Register of Historic Places in 1982', 
'http://www.thefillmoredetroit.com/', 
'the-fillmore.jpg', 
'Open on event days: 2 hours before event - event start','12:00 PM - 5:00 PM', 'Open on event days: 2 hours before event - event start' ,
'12:00 PM - 5:00 PM','Open on event days: 2 hours before event - event start','12:00 PM - 5:00 PM','Open on event days: 2 hours before event - event start'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Campus Martius Park',
'800 Woodward Ave, Detroit, MI, 48226', 
'42.332083', 
'-83.046567',
'Parks',
'Campus Martius Park is a re-established park in Downtown Detroit, Michigan. After the fire of 1805, Campus Martius (from the Latin for Field of Mars, where 
Roman heroes walked) was the focal point of Judge Augustus Woodward''s plans to rebuild the city. It was named for the principal square in Marietta, Ohio, 
the first capital of the Northwest Territories.', 
'http://downtowndetroitparks.com/campus-martius', 
'campus-martius.jpg', 
'6:00 AM - 10:00 PM','6:00 AM - 10:00 PM', '6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Beacon Park',
'1901 Grand River Ave, Detroit, MI, 48226', 
'42.334571', 
'-83.055328',
'Parks',
'DTE Energy''s Beacon Park attracts visitors with its expansive green space, year-round events, interactive light installations and restaurant featuring 
rooftop seating with panoramic views of the park and city skyline.', 
'https://empoweringmichigan.com/beacon-park/', 
'beacon-park.jpg', 
'6:00 AM - 10:00 PM','6:00 AM - 10:00 PM', '6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM','6:00 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'New Center Park',
'2998 W Grand Blvd, Detroit, MI, 48202', 
'42.368658', 
'-83.076971',
'Parks',
'The New Center Park is a park that was added to serve as a gathering place and which hosts a summer long series of weekly events held in the New Center area. 
It includes outdoor movies and concerts, happy hour, summer Jazz, and regular events for families and children. ', 
'http://www.newcenterpark.com',
'new-center-park.jpg', 
'8:00 AM - 9:00 PM','8:00 AM - 9:00 PM','8:00 AM - 9:00 PM','8:00 AM - 9:00 PM','8:00 AM - 9:00 PM','8:00 AM - 9:00 PM','8:00 AM - 9:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Belle Isle',
'99 Pleasure Dr, Detroit, MI, 48207', 
'42.345122', 
'-82.974085',
'Parks',
'Rich with history and natural beauty, Belle Isle Park is a Detroit gem and became Michigan''s 102nd State Park in 2014 as part of a lease agreement with the 
City of Detroit. This 982-acre island park is situated on the Detroit River between the United States and Canada. It is home 
to a wide assortment of educational and recreational opportunities, including an aquarium, conservatory and the James Scott Memorial Fountain.', 
'https://www2.dnr.state.mi.us/parksandtrails/Details.aspx?id=736&type=SPRK',
'belle-isle-park.jpg', 
'5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Milliken Park',
'1900 Atwater St, Detroit, MI, 48207', 
'42.332137', 
'-83.027832',
'Parks',
'William G. Milliken State Park and Harbor is the first urban state park and is considered a green oasis in the heart of the city. The park is situated on the Detroit River 
and provides excellent opportunities for picnics, walks, fishing and much more.', 
'https://www2.dnr.state.mi.us/parksandtrails/Details.aspx?id=697&type=SPRK',
'milliken-park.jpg', 
'5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM','5:00 AM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Honest John''s',
'488 Selden St, Detroit, MI, 48201', 
'42.348008', 
'-83.063968',
'Bars',
'Serving up breakfast till noon on weekdays and till 3 on weekends, Honest John''s is sure to keep you going, with Bloody Marys and 
Ghetto Blaster Ale and a full bar at any time of day. As many as 30 to 40 people can sit outside, complete with Waspinators to keep 
your eating adventure clean and fun. 
Note: The badass jukebox plays funk and Motown, and can be heard out on the patio.', 
'http://www.honestjohnsdetroit.com',
'honest-johns.jpg', 
'9:00 AM - 2:00 AM','7:00 AM - 2:00 AM','7:00 AM - 2:00 AM','7:00 AM - 2:00 AM','7:00 AM - 2:00 AM','7:00 AM - 2:00 AM','7:00 AM - 2:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Woodbridge Pub',
'5169 Trumbull Ave, Detroit, MI, 48208', 
'42.354045', 
'-83.080115',
'Bars',
'Wood-lined hangout featuring locally sourced American fare, Sunday brunch & lots of beer & wine.', 
'http://www.woodbridgepub.com/',
'woodbridge.jpg', 
'11:00 AM - 12:00 AM','11:00 AM - 2:00 AM','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 12:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM'
);
INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'State Bar & Grill (inside the Fillmore bldg)',
'2115 Woodward Ave, Detroit, MI, 48201', 
'42.337937', 
'-83.051769',
'Bars',
'The perfect downtown corner bar with a perfect blend of Detroit sports, rock ''n roll and Detroit history. Proud to offer a grill menu, full bar 
service including many Michigan beers, beautiful hardwood bar, booths, tables, flat screens, small stage for bands and jukebox or DJ. Close to 
Comerica Park and Ford Field, hear the crowd roar from the barstool.', 
'https://visitdetroit.com/profile/state-bar-grill/', 
'state-bar-and-grill.jpg', 
'Closed','Closed', 'Closed' ,'Closed','4:00 PM - 10:00 PM','4:00 PM - 10:00 PM','4:00 PM - 10:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Jolly Pumpkin',
'441 Canfield St #9, Detroit, MI, 48201', 
'42.351534', 
'-83.065248',
'Bars',
'Vibrant outpost offering a range of house beers, plus pizza & sandwiches, in rustic-chic digs.', 
'https://www.jollypumpkin.com/jp/detroit-jolly-pumpkin-brewery',
'jolly-pumpkin-bar.jpg', 
'11:30 AM - 10:00 PM','11:30 AM - 11:00 PM','11:30 AM - 11:00 PM','11:30 AM - 11:00 PM','11:30 AM - 11:00 PM','11:30 AM - 1:00 AM','11:30 AM - 1:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Northern Lights',
'660 W Baltimore, Detroit, MI, 48202', 
'42.366953', 
'-83.076708',
'Bars',
'Northern Lights feels like home. The beers are cheap, the atmosphere is super low-key, and the patio is beyond amazing. 
The entire place has a very retro feel, but with trendy (and delicious) food. Enjoy live music on Tuesdays and live DJ on the weekend! - 
Bonus points if it''s a summer evening on the patio!', 
'http://northernlightslounge.com/',
'northern-lights-bar.jpg', 
'11:00 AM - 2:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM','11:00 AM - 2:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Sugarhouse',
'2130 Michigan Ave, Detroit, MI, 48216', 
'42.331692', 
'-83.075805',
'Bars',
'The Sugar House is Detroit''s original craft cocktail bar, opening in the fall of 2011 in the historic Corktown neighborhood. 
In addition to the foundational 101 classics, the Sugar House features a rotating seasonal menu of original house cocktails and 
one of the deepest back bars in the city. The extensive spirits list is anchored by the many hand picked single barrel bourbons 
and American whiskies.', 
'http://sugarhousedetroit.com/',
'sugar-house-bar.jpg', 
'3:00 PM - 2:00 AM','5:00 PM - 12:00 AM','5:00 PM - 12:00 AM','5:00 PM - 2:00 AM','5:00 PM - 2:00 AM','5:00 PM - 2:00 AM','3:00 PM - 2:00 AM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Second Best',
'42 Watson St, Detroit, MI, 48201', 
'42.351534', 
'-83.065248',
'Bars',
'Planted within walking distance of your favorite downtown venues and stadiums, tucked just a few steps off Woodward Ave., 
Second Best is a neighborhood hangout for the everyman and woman, engrained with a steadfast devotion to producing a high caliber product 
that is derived from reminiscence and delivered with swift, impassioned service in a casual, approachable environment...
Blue Ribbon quality with a Red Ribbon tag.', 
'https://www.secondbestdetroit.com/',
'second-best-bar.jpg', 
'2:00 PM - 2:00 AM','4:00 PM - 2:00 AM','4:00 PM - 2:00 AM','4:00 PM - 2:00 AM','4:00 PM - 2:00 AM','4:00 PM - 2:00 AM','2:00 PM - 2:00 AM'
);
 
INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Motor City Casino',
'2901 Grand River Ave, Detroit, MI, 48201', 
'42.338478', 
'-83.067423',
'Casinos',
'When you step into MotorCity Casino, you enter a world that''s been fine-tuned for action. Neon Lights. Music. Excitement. It''s all here: 
Over 2,700 slot machines including the latest multi-line video and 5-reel slots. 59 table games including Blackjack, Roulette, Casino War, 
Pai Gow Poker, Mini-Baccarat and Craps. And a 12-table smoke-free Poker Room where you can go ALL-IN at Seven Card Stud or Texas Hold''Em.', 
'https://www.motorcitycasino.com/default.aspx', 
'motorcity-casino.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);
 
INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'MGM Grand Casino',
'1777 3rd Ave, Detroit, MI, 48226', 
'42.333689', 
'-83.059203',
'Casinos',
'Out of town travelers and natives alike all hear the roar rising from the opulent $800-million MGM Grand Detroit. Developed by MGM Resorts 
International, one of the world''s most respected hotel and gaming companies, and invested in by Metro-Detroit Partner''s LLC, MGM Grand Detroit 
is the first-ever Las Vegas-style destination to open in a major metropolitan core. Delivering over 4,000 of the latest slots and video poker, 
over 90 table games, unrivaled luxury rooms and suites, celebrity chef restaurants, the only resort-style spa in southeast Michigan and 30,000 
square feet of meeting and convention space, MGM Grand Detroit is now the ultimate hotel and entertainment destination in the state.', 
'https://mgmgranddetroit.mgmresorts.com/', 
'mgm-grand-casino.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
); 
 
INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Greektown Casino',
'555 E Lafayette St, Detroit, MI, 48226', 
'42.334785', 
'-83.041219',
'Casinos',
'No matter what you want to play, Greektown Casino has got your game. From slot machines and table games to live poker, our downtown Detroit casino 
offers 100,000 square feet of exciting, action-packed choices. Maybe you want to try your luck on some of your favorite card games? Our selection of 
table games is second to none anywhere in Michigan.  Our unique decor and layout reflects the fun, ''anything goes'' atmosphere of the Greektown 
neighborhood that we call home, and offers a unique vibe and excitement you can''t get anywhere but Greektown.', 
'https://www.greektowncasino.com/', 
'greektown-casino.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
); 
 
 
INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Martin Luther King Jr. High School (King)',
'3200 E Lafayette Blvd, Detroit, MI, 48207', 
'42.342726', 
'-83.016606',
'Top 3 High Schools',
'Either the 2nd or 3rd best high school in Detroit. Dr. Martin Luther King, Jr. High School is located at 3200 East Lafayette Boulevard in Detroit, 
Michigan; the building is operated by the Detroit Board of Education. King''s district encompasses Downtown and Midtown Detroit; it also includes 
Lafayette Park, the Martin Luther King Apartments and Riverfront Condominiums. The Brewster-Douglass Housing Projects were zoned to MLK prior to 
their demolition. In addition, it includes the three Wayne State University housing complexes that permit families with children (Chatsworth 
Tower, DeRoy, and University Tower).', 
'https://www.detroitk12.org/schools/king', 
'king.jpg', 
'8:00 AM - 3:20 PM','8:00 AM - 3:20 PM','8:00 AM - 3:20 PM','8:00 AM - 3:20 PM','8:00 AM - 3:20 PM','8:00 AM - 3:20 PM','8:00 AM - 3:20 PM'
); 

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Renaissance High School',
'6565 Outer Dr W, Detroit, MI 48235', 
'42.418198', 
'-83.192655',
'Top 3 High Schools',
'Either the 2nd or 3rd best high school in Detroit. Renaissance High School is a public high school located within the city of Detroit, Michigan. 
Renaissance is one of few magnet high schools in the Detroit Public Schools district. Founded in 1978 on the former site of Catholic Central High 
School, Renaissance''s first senior class graduated in 1981. A new building for the school was dedicated in 2005 at the site of the former Sinai 
Hospital.', 
'https://www.detroitk12.org/schools/rennaisance', 
'renny.jpg', 
'Closed','7:00 AM - 5:00 PM','7:00 AM - 5:00 PM','7:00 AM - 5:00 PM','7:00 AM - 5:00 PM','7:00 AM - 5:00 PM','7:00 AM - 5:00 PM'
); 

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Cass Technical High School (Cass Tech)',
'2501 Second Ave, Detroit, MI, 48201', 
'42.339139', 
'-83.059857',
'Top 3 High Schools',
'Thee best high school in Detroit... quite possibly the world! Cass Technical High School (simply referred to as Cass Tech) is a public high 
school in Midtown Detroit, Michigan, United States. It was established in 1907 and is part of the Detroit Public Schools Community District. 
It is named in honor of Lewis Cass, a military officer and politician.  Until 1977, Cass was Detroit''s only magnet school and the only 
non-neighborhood enrollment school in Detroit. Today, Cass is one of few magnet schools in Detroit. Entrance to Cass is based on test scores and 
middle school grades. Students are required to choose a curriculum path (roughly equivalent to a college major) in the ninth grade. 
Areas of study include but are not limited to: arts and communication, business management and marketing, engineering and manufacturing, 
chemical biological, and science and arts.', 
'https://www.detroitk12.org/casstech', 
'cass-tech.jpg', 
'Closed','7:00 AM - 5:30 PM','7:00 AM - 5:30 PM','7:00 AM - 5:30 PM','7:00 AM - 5:30 PM','7:00 AM - 5:30 PM','Closed'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Guardian Building', 
'500 Griswold St, Detroit, MI, 48226', 
'42.329833', 
'-83.046099',
'Historic Buidings and Landmarks',
'Known as Detroit''s Cathedral of Finance, the Guardian Buidling was originally named the Union Guardian Building. The architectural commission 
for the building went out to Smith, Hinchman & Grylls; The result was a 496-foot, 40-story steel-framed building sheathed in 1.8 million 
orange bricks -- a specially formulated shade dubbed Guardian brick by the architect. 

The interior contains rare black marble, as well as numidian marble (chosen for it''s unusual blood-red color. 
No mines in the world quarried it at the time, so the architect (Rowland) went to Africa, where a mine that had been closed for 30 years 
was reopened just long enough for him to pick out the marble he needed for the lobby. In 1998, Smith, Hinchman & Grylls - 
now known simply as the SmithGroup - moved into the Guardian, the gem that one of its architects had designed 70 years earlier.
The Guardian was designated a National Historic Landmark in June 1989.', 
'https://www.historicdetroit.org/buildings/guardian-building', 
'guardian-building.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Michigan Central Station', 
'2001 15th St, Detroit, MI, 48216', 
'42.328849', 
'-83.077763',
'Historic Buidings and Landmarks',
'Michigan Central Station is a historic former main intercity passenger rail depot in Detroit, Michigan. Built for the 
Michigan Central Railroad, it replaced the original depot in downtown Detroit, which was shuttered after a major fire on 
December 26, 1913, forcing the still unfinished station into early service. Formally dedicated on January 4, 1914, the 
station remained open for business until the cessation of Amtrak service on January 6, 1988. Since 2011, demolition works, 
minor structural repairs, repairs of the roof structure, and covering the glass roof openings in the concourse have been 
performed. The basement, which was once full of water, has been fully drained. Barbed wire fencing has been installed in 
an attempt to keep out vandals and the windows in the tower have been replaced. Restoration projects and plans had gone as
far as the negotiation process, but none had come to fruition until May 2018 when Ford Motor Company purchased the building 
for redevelopment into a mixed use facility and cornerstone of the company''s new Corktown campus.', 
'https://www.historicdetroit.org/buildings/michigan-central-station', 
'mi-central-station.jpg', 
'Closed','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','9:00 AM - 5:00 PM','Closed'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'Michigan Soldiers'' and Sailors'' Monument', 
'Detroit, MI, 48226', 
'42.331346', 
'-83.046437',
'Historic Buidings and Landmarks',
'The Michigan Soldiers'' and Sailors'' Monument is a Civil War monument located in Downtown Detroit, Michigan. This example of civic sculpture 
stands in a prominent location on the southeast tip of Campus Martius Park, where five principal thoroughfares: Michigan Avenue, Monroe Street, 
Cadillac Square, Fort Street, and Woodward Avenue, convene on the reconstructed traffic circle in front of One Campus Martius Building. It was listed
on the National Register of Historic Places in 1984.', 
'https://www.historicdetroit.org/buildings/michigan-central-station', 
'mi-soldiers-sailors.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Heidelberg Project', 
'3600 Heidelberg St, Detroit, MI, 48207', 
'42.359838', 
'-83.020777',
'Public Art and Murals',
'The Heidelberg Project (""HP"") is an outdoor art environment in the heart of an urban area and a Detroit based community organization with a 
mission to improve the lives of people and neighborhoods through art. The theory of change for the Heidelberg Project begins with the belief that 
all citizens, from all cultures, have the right to grow and flourish in their communities. The HP believes that a community can re-develop and 
sustain itself, from the inside out, by embracing its diverse cultures and artistic attributes as the essential building blocks for a fulfilling 
and economically viable way of life.', 
'https://www.heidelberg.org/',
'heidelberg-project.jpg', 
'8:00 AM - 7:00 PM','8:00 AM - 7:00 PM','8:00 AM - 7:00 PM','8:00 AM - 7:00 PM','8:00 AM - 7:00 PM','8:00 AM - 7:00 PM','8:00 AM - 7:00 PM'
);

INSERT INTO landmarks (name, address, coordinate_x, coordinate_y, venue_type, description, website, images, sunday, monday, tuesday, wednesday, thursday, friday, saturday)
VALUES(
'The Chimera', 
'1600 Clay Ave, Detroit, MI, 48211', 
'42.377699', 
'-83.061081',
'Public Art and Murals',
'Located on the westward facing wall of the Russell Industrial Complex''s Building #2 is this colossal 8,750 square foot (813 sq m) mural by artist 
Kobie Solomon. Dubbed The Chimera, it''s purportedly the largest graffiti mural in the state of Michigan and can be easily seen by passersby on 
Interstate 75.

If you''re not familiar with Detroit sports the symbolism might be lost on you, but what you''re looking it is a hybrid animal representing Detroit''s 
official teams: The Detroit Lions (football), The Detroit Tigers (baseball), The Detroit Redwings (hockey), and The Detroit Pistons (basketball).
Although a traditional Chimera, according to Greek mythology, is usually depicted as a lion, snake and goat, this interpretation is simply awesome.', 

'https://www.kickstarter.com/projects/detroitharmonie/detroit-chimera-graffiti-mural-project',
'russel-industrial-the-chimera.jpg', 
'Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours','Open 24 hours'
);

COMMIT;