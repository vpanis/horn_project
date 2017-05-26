puts 'Cleaning DB...'
Booking.destroy_all
Horntrip.destroy_all
User.destroy_all

puts 'Creating Users...'

mike                = User.create(email: "mike@gmail.com", password: '123456', username: "Official")
url_mike            = "http://a.espncdn.com/photo/2011/0713/life_horn1x_600.jpg"
mike.photo_url      = url_mike
pokora              = User.create(email: "pokora@gmail.com", password: '123456', username: "Pokora")
url_pokora          = "https://upload.wikimedia.org/wikipedia/commons/6/69/M._Pokora_2013.jpg"
pokora.photo_url    = url_pokora
achille             = User.create(email: "achille@gmail.com", password: '123456', username: "Achilou")
url_achille         = "https://avatars2.githubusercontent.com/u/25741493?v=3"
achille.photo_url   = url_achille
alban               = User.create(email: "alban@gmail.com", password: '123456', username: "Alban")
url_alban           = "https://avatars1.githubusercontent.com/u/25384564?v=3"
alban.photo_url     = url_alban
alexis              = User.create(email: "alexis@gmail.com", password: '123456', username: "Alexounet")
url_alexis          = "https://avatars1.githubusercontent.com/u/25386153?v=3"
alexis.photo_url    = url_alexis
charles             = User.create(email: "charles@gmail.com", password: "123456", username: "Charles")
url_charles         = "https://avatars2.githubusercontent.com/u/5082751?v=3"
charles.photo_url   = url_charles
mathieu             = User.create(email: "mathieu@gmail.com", password: "123456", username: "Matouuuuu")
url_mathieu         = "https://avatars3.githubusercontent.com/u/25053116?v=3"
mathieu.photo_url   = url_mathieu
nicolas             = User.create(email: "nicolas@gmail.com", password: "123456", username: "Nico")
url_nicolas         = "https://avatars1.githubusercontent.com/u/26443990?v=3"
nicolas.photo_url   = url_nicolas
vincent             = User.create(email: "vincent@gmail.com", password: "123456", username: "Vincent")
url_vincent         = "https://avatars0.githubusercontent.com/u/25386031?v=3"
vincent.photo_url   = url_vincent
xavier              = User.create(email: "xavier@gmail.com", password: "123456", username: "xavvvvvv")
url_xavier          = "https://avatars0.githubusercontent.com/u/1410430?v=3"
xavier.photo_url    = url_xavier
fred                = User.create(email: "fred@gmail.com", password: "123456", username: "Coquinou")
url_fred            = "http://www.lesinrocks.com/wp-content/thumbnails/uploads/2010/12/FredericMitterrand6042-tt-width-604-height-466.jpg"
fred.photo_url      = url_fred
manu                = User.create(email: "manu@gmail.com", password: "123456", username: "Manu The Machine")
url_manu            = "http://resize3-parismatch.ladmedia.fr/r/300,300,center-middle,ffffff/img/var/news/storage/images/paris-match/people-a-z/emmanuel-macron/14862769-3-fre-FR/Emmanuel-Macron.jpg"
manu.photo_url      = url_manu

puts 'Creating Horntrips...'

amazonie               = Horntrip.create(title: "3 Days Jungle Tour in Leticia Amazonas", address: "Manaus, Amazonas, Bresil", price: 340, starting_day: Date.new(2017, 6, 5), length: 3, description: "This is a perfect tour if you dont have enough days in the Amazon but you want to have lot of fun. My tour in Leticia Amazonas and surroundings is a mix of Culture – My Village – Jungle – Lakes – Native Communities – Adventure – Wildlife and all what you can experience about the Amazon.", is_outside: true, is_dirty: true, is_food: false, user_id: achille.id)
url_amazonie           = "http://gayatrek.com/wp-content/uploads/2015/07/Amazonie-Vue-Ciel2.jpg"
amazonie.photo_url     = url_amazonie
angers                 = Horntrip.create(title: "Angers neighborhood", address: "14 Rue Garnier, 49100 Angers", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district. Set in the heart of the region Pays de la Loire, and very Europe-minded, France’s 17th city enjoys a good reputation as a desirable place to live. According to the Express magazine, Angers even offers the highest quality of life to its residents compared to other big french cities.", is_outside: false, is_dirty: true, is_food: true, user_id: mathieu.id)
url_angers             = "http://blog.univ-angers.fr/hola/files/2013/11/02e3cf020a40e3d57cf021b3151ccb7c_large1.jpeg"
angers.photo_url       = url_angers
auvergne               = Horntrip.create(title: "Auvergne vulcano", address: "1 Rue Didier Daurat, 63000 Clermont-Ferrand", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano. Forget Bordeaux and Toulouse. Get Paris out of your head. Avoid Nice and Marseille at all costs. Clermont-Ferrand, the hidden gem of the Auvergne region, is the new French Riviera, argues Katie Warren.", is_outside: false, is_dirty: true, is_food: true, user_id: xavier.id)
url_auvergne           = "http://www.giaa.org/IMG/jpg/auvergne.jpg"
auvergne.photo_url     = url_auvergne
vierzon                = Horntrip.create(title: "Hell in Vierzon", address: "20 Avenue Pierre Semard, 18100 Vierzon", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Vierzon’s history dates back to before Roman times. During the wars with the English it was captured by Richard the Lionheart. However, its main development started with the building of the first ironworks in 1779, to which were later added potteries and smelting industries. The famous Porcelaine de Limoges originated in this area. ", is_outside: true, is_dirty: false, is_food: false, user_id: pokora.id)
url_vierzon            = "http://img.over-blog.com/500x374/3/44/75/72/Les-Vierzon-rentrent-au-bercail/DSC03928.JPG"
vierzon.photo_url      = url_vierzon
charleville            = Horntrip.create(title: "Drama in Charleville-Mezieres", address: "9 Rue Pierre Bérégovoy, 08000 Charleville-Mezieres", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: nicolas.id)
url_charleville        = "http://nsm08.casimages.com/img/2015/02/24//15022410291410936913003383.jpg"
charleville.photo_url  = url_charleville
titicaca               = Horntrip.create(title: "Cluedo near Titicaca", address: " Avenida 6 de Agosto esquina Calle Cabo Zapana (Santivañez en el mapa) S/N, Santivañez, Copacabana, Bolivia", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: mathieu.id)
url_titicaca           = "http://www.actulatino.com/wp-content/uploads/2016/01/perou11012016.jpg"
titicaca.photo_url     = url_titicaca
harare                 = Horntrip.create(title: "Croco in Zimbabwe", address: "23, Lezard Ave, Harare, Zimbabwe", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Taste the Luxembourgish wild", is_outside: true, is_dirty: true, is_food: false, user_id: mike.id)
url_harare             = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRonu06U-udQic5s_TQw3PIpXvcmAGYQ_7o8lLxoinwxIokhy5UQg"
harare.photo_url       = url_harare
vichy                  = Horntrip.create(title: "Vichy with Grand-Mother", address: "9 Rue Besse, 03200 Vichy", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "In the Auvergne region, the town of Vichy offers a great getaway for visitors, combining the delightful charm of its buildings with an eclectic French architecture including spring and river themed decorative features. Elegant and simple, conveying all the peace and tranquillity of the finer things in life, Vichy offers a mixture of pleasures to be discovered during your holidays in France, including casinos, races, spa or fitness centres, lyrical art and Byzantine monuments.", is_outside: true, is_dirty: true, is_food: true, user_id: alexis.id)
url_vichy              = "http://www.vichy-thermes-callou-hotel.fr/sites/all/files/imagecache/full_colonne/VICHY-THERMES-CALLOU-HOTEL-piscine-thermale-1.jpg"
vichy.photo_url        = url_vichy
everest                = Horntrip.create(title: "Climb everest in 2 days", address: "Jhamshikhel, Lalitpur, Patan 44700, Nepal", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Find the right tour for you through Mount Everest. We’ve got 46 tours going to Mount Everest, starting from just 8 days in length, and the longest tour is 95 days. The most popular month to go is September, which has the most number of tour departures.", is_outside: false, is_dirty: true, is_food: true, user_id: alexis.id)
url_everest            = "https://medias.lequipe.fr/img-photo-jpg/une-nouvelle-tentative-sur-l-everest-en-2017-pour-l-ultra-terrestre-espagnol-kilian-jornet-utwt-d/1500000000779142/0-960-480-70/a48fb.jpg"
everest.photo_url      = url_everest
reunion                = Horntrip.create(title: "Hard work in Ile de la Reunion", address: "12 Rue de la Compagnie, Saint-Denis, Reunion", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "The jewels in the crown of Reunion Island, its volcanic peaks, craters and ramparts were included in UNESCO's list of World Heritage Sites on 10 August 2010, endorsed by the Committee. This was a long-awaited and justified recognition for this European island in the Indian Ocean. A unique natural environment where the mountains merge with the sea, where the undulating relief of the landscape offers magnificent scenery, and where 30% of natural space has remained intact since the island's discovery: Reunion Island confirms its status as a destination with exceptional natural assets.", is_outside: true, is_dirty: true, is_food: false, user_id: xavier.id)
url_reunion            = "http://www.saleveairlines.com/wpsite/wp-content/uploads/2013/06/la_reunion_vue_du_ciel02_-_credit_irt_-_serge_gelabert_dts_12_2014.jpg"
reunion.photo_url      = url_reunion
patagonie              = Horntrip.create(title: "Patagonia trail", address: "Av. Maipú 749, 9410 Ushuaia, Tierra del Fuego, Argentine", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: false, user_id: pokora.id)
url_patagonie          = "http://www.cavalngo.com/images/voyages/randonnee_equestre_patagonie_argentine_cavalngo__1_4.jpg"
patagonie.photo_url    = url_patagonie
vegas                  = Horntrip.create(title: "Americain trail", address: "3600 S Las Vegas Blvd, Las Vegas, NV 89109, US", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Vegas is all about spontaneity, sure, but if you've got a bit of a game plan, you can be sure to get the most out of your vacation by planning on The Only Official Website of Las Vegas®. So we've conveniently put together a list of links to get you started.", is_outside: false, is_dirty: true, is_food: true, user_id: mike.id)
url_vegas              = "http://www.jessvoyages.fr/wp-content/uploads/2014/11/las-vegas2.jpg"
vegas.photo_url        = url_vegas
riom                   = Horntrip.create(title: "One day Auvergne will win !", address: "52 Rue Hippolyte Gomot, 63200 Riom", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "In 1985 Riom received the French classification of Ville d'Art et d'Histoire recognizing its sixteen classified historical monuments as well as another 57 on the supplementary listings. Several 17th- and 18th-century private houses (hôtels particuliers) are open to the public with collections of costumes and works of decorative art.", is_outside: false, is_dirty: true, is_food: true, user_id: mike.id)
url_riom               = "https://www.ville-riom.fr/fileadmin/_processed_/8/e/csm_IMG_1588_f46ec40f09.jpg"
riom.photo_url         = url_riom

puts 'Creating Bookings...'

b_1  = Booking.create(user: mike, horntrip: amazonie)
b_2  = Booking.create(user: alban, horntrip: auvergne)
b_3  = Booking.create(user: charles, horntrip: angers)
b_4  = Booking.create(user: vincent, horntrip: vierzon)
b_5  = Booking.create(user: charles, horntrip: vierzon)
b_6  = Booking.create(user: alban, horntrip: vierzon)
b_7  = Booking.create(user: alexis, horntrip: everest)
b_8  = Booking.create(user: xavier, horntrip: vegas)
b_9  = Booking.create(user: alban, horntrip: reunion)
b_10 = Booking.create(user: charles, horntrip: harare)
b_11 = Booking.create(user: vincent, horntrip: titicaca)
b_12 = Booking.create(user: fred, horntrip: charleville)
b_13 = Booking.create(user: manu, horntrip: riom)
b_14 = Booking.create(user: fred, horntrip: auvergne)
b_15 = Booking.create(user: manu, horntrip: auvergne)


puts 'Finished !'
