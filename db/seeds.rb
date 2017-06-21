# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.create([{name:"Orson Scott Card"}, {name:"J.K. Rowling"}])
Book.create([
{
author_id: 1,
title: "Ender's Game (Ender's Saga, #1)",
goodreads_book_id: "2422333375802589",
publication_year: "1985",
average_rating: "4.29",
image_url: "https://images.gr-assets.com/books/1408303130m/375802.jpg",
small_image_url: "https://images.gr-assets.com/books/1408303130s/375802.jpg",
created_at: "2017-06-17T18:31:45.655Z",
updated_at: "2017-06-17T18:31:45.655Z"
},
    {
author_id: 2,
title: "Harry Potter and the Sorcerer's Stone (Harry Potter, #1)",
goodreads_book_id: "464079931077326",
publication_year: "1997",
average_rating: "4.44",
image_url: "https://images.gr-assets.com/books/1474154022m/3.jpg",
small_image_url: "https://images.gr-assets.com/books/1474154022s/3.jpg",
created_at: "2017-06-18T16:55:25.647Z",
updated_at: "2017-06-18T16:55:25.647Z"
}
    ])

User.create([{username:"mdo5004"},{username:"rvo1987"}])

Comment.create([
    { user_id:1, page: 111, text: "Bacon ipsum dolor amet ribeye kevin tail cupim corned beef, meatloaf rump porchetta short ribs bresaola frankfurter pork capicola. Doner cupim bacon meatloaf. Turkey tenderloin chuck, ham hock swine tri-tip kielbasa burgdoggen alcatra salami tongue filet mignon ribeye. Prosciutto tenderloin salami, pork chop corned beef jowl kielbasa turkey. Cow tail meatball, doner shankle salami tongue chicken biltong picanha beef.", book_id: 1},
    { user_id:2, page: 222, text: "Turducken doner meatball capicola rump, turkey sausage short ribs pastrami jowl kevin. Flank salami cow, ribeye pastrami corned beef chicken frankfurter bacon. Sirloin bresaola beef ground round, jerky burgdoggen short loin shank short ribs swine pork ham fatback. Alcatra jerky tenderloin shoulder tongue pig shankle drumstick turkey jowl chicken beef ribs doner. Venison strip steak shankle boudin pastrami porchetta prosciutto pork belly shank ribeye tongue burgdoggen. Burgdoggen hamburger pancetta, frankfurter leberkas turducken tongue cow beef ribs jerky porchetta swine alcatra t-bone fatback.", book_id: 1},    
    { user_id:1, page: 111, text: "Pork chop short ribs rump, pork belly turducken bresaola ham hock kielbasa pork venison corned beef drumstick. Frankfurter prosciutto capicola tenderloin. Shank rump t-bone, pork chop ham hock pastrami shankle bacon sirloin cow short ribs turkey. Jerky doner andouille short ribs, kevin pork loin filet mignon ham corned beef porchetta hamburger tongue pastrami pork.", book_id: 1},
    { user_id:2, page: 222, text: "Pork belly beef ribs burgdoggen short loin kevin. Filet mignon bacon pork belly short ribs andouille. Cow flank turkey bresaola chicken. Landjaeger swine alcatra, kielbasa ham hock t-bone chicken ham boudin tenderloin filet mignon venison chuck pork chop. Boudin shank salami burgdoggen turkey doner biltong bresaola ground round. Picanha chuck shank salami short loin shankle corned beef ball tip landjaeger tri-tip shoulder sirloin bacon pork belly biltong.", book_id: 1},
    { user_id:1, page: 111, text: "Salami leberkas turkey, shank swine rump turducken meatloaf burgdoggen jerky cupim picanha brisket. Alcatra hamburger ground round pastrami, tail drumstick pork belly shoulder bresaola. Tenderloin frankfurter burgdoggen, short ribs pork loin rump leberkas swine sausage alcatra sirloin brisket. Tongue prosciutto sirloin, porchetta capicola flank tenderloin bresaola chicken doner. Porchetta frankfurter flank, jowl filet mignon chuck doner andouille beef. Pork loin fatback leberkas, beef ribs kevin pork belly swine.", book_id: 1},
    
    { user_id:1, page: 111, text: "Keytar literally bushwick snackwave, kickstarter pork belly tbh poutine bitters mustache man bun pinterest live-edge echo park master cleanse. Williamsburg meggings butcher readymade kombucha four loko fashion axe retro direct trade edison bulb artisan cred small batch. Subway tile lyft man bun man braid shoreditch fingerstache ugh readymade cardigan blue bottle lomo vegan helvetica. Palo santo XOXO fixie scenester +1 skateboard, cornhole bespoke. Woke neutra mixtape tbh, yuccie austin cloud bread polaroid direct trade readymade pitchfork pok pok semiotics. Portland vinyl asymmetrical next level. Craft beer ennui live-edge cred vexillologist ugh. You probably haven't heard of them actually cold-pressed scenester vinyl raw denim, pinterest drinking vinegar gluten-free try-hard. Cornhole cred yuccie, mumblecore DIY glossier art party shabby chic PBR&B disrupt live-edge helvetica cray.
", book_id: 2},
    { user_id:2, page: 222, text: "Gochujang messenger bag microdosing jianbing post-ironic kickstarter. Pop-up art party salvia, tousled post-ironic banjo listicle chicharrones deep v vape artisan bushwick. Paleo vinyl drinking vinegar bushwick 8-bit disrupt fanny pack gluten-free bitters pinterest post-ironic DIY offal. Wolf yuccie blue bottle paleo blog. Blue bottle lomo lumbersexual skateboard tacos green juice shaman 8-bit woke prism before they sold out. Coloring book art party post-ironic you probably haven't heard of them. Vinyl kinfolk sustainable, neutra leggings affogato wolf butcher kale chips williamsburg. Activated charcoal you probably haven't heard of them succulents gluten-free, vegan four dollar toast bushwick street art. Iceland bitters thundercats, cray butcher truffaut intelligentsia. Food truck glossier bushwick tofu, vinyl flexitarian bitters authentic readymade wolf heirloom pour-over drinking vinegar small batch la croix. Meditation chartreuse squid, pitchfork you probably haven't heard of them portland tousled bitters forage normcore biodiesel bicycle rights cronut pop-up readymade. Readymade VHS coloring book street art retro small batch. Before they sold out vexillologist wolf, tacos mlkshk cloud bread crucifix flexitarian roof party salvia retro green juice la croix iceland. Snackwave sustainable wayfarers, cornhole raw denim cardigan bicycle rights you probably haven't heard of them echo park listicle banh mi street art cred.
", book_id: 2},    
    { user_id:1, page: 111, text: "Palo santo tumblr raw denim marfa butcher iPhone jean shorts umami cronut vape gochujang messenger bag fam pop-up. Tbh migas pour-over succulents shoreditch venmo tilde. Gluten-free vaporware pinterest mlkshk PBR&B master cleanse stumptown flexitarian keffiyeh. Squid aesthetic thundercats hoodie. Single-origin coffee glossier man bun neutra, echo park enamel pin tacos. Freegan jean shorts small batch offal godard, single-origin coffee asymmetrical man bun. Farm-to-table cloud bread vaporware chicharrones, leggings selvage stumptown four loko. You probably haven't heard of them chambray bushwick live-edge flannel williamsburg venmo photo booth pug yr meditation. Locavore knausgaard typewriter freegan chicharrones health goth flexitarian farm-to-table helvetica. Chicharrones trust fund blue bottle PBR&B, taiyaki cray cliche banjo seitan copper mug crucifix brooklyn tumeric cloud bread kale chips. Raw denim kitsch jianbing, distillery palo santo +1 gastropub cray tacos synth blue bottle roof party crucifix freegan literally. Sartorial pinterest palo santo edison bulb ugh letterpress try-hard blog 3 wolf moon pabst pour-over keffiyeh tousled banjo. Hammock occupy intelligentsia quinoa, plaid echo park typewriter cardigan banh mi brunch tousled. Cred intelligentsia pork belly helvetica. PBR&B semiotics hella pour-over skateboard woke ramps vegan.
", book_id: 2},
    { user_id:2, page: 222, text: "Raclette iPhone tumblr, locavore vaporware skateboard gluten-free. Truffaut actually gastropub four loko echo park hexagon shabby chic vinyl cloud bread lo-fi chambray church-key. Meditation echo park fanny pack poke craft beer godard. Retro live-edge cloud bread meggings lyft twee paleo direct trade. Seitan YOLO succulents yr, ethical sartorial woke subway tile letterpress. Succulents pour-over cloud bread sartorial. Hammock normcore next level ugh. Af tattooed sriracha butcher dreamcatcher squid chartreuse raclette. Pabst gluten-free yr kale chips, DIY literally gastropub roof party palo santo gochujang synth brooklyn. Freegan selfies listicle disrupt crucifix hot chicken wayfarers cardigan poutine man braid narwhal gochujang. Church-key chicharrones artisan coloring book small batch taiyaki hell of photo booth wolf celiac gochujang bushwick. Hoodie fashion axe selfies pork belly, godard iPhone synth. Humblebrag marfa subway tile blog meditation succulents, tumblr thundercats fashion axe schlitz. 8-bit umami polaroid flannel pork belly everyday carry, 90's echo park normcore tofu occupy helvetica.
", book_id: 2},
    { user_id:1, page: 111, text: "Occupy seitan tumeric, trust fund typewriter brooklyn art party normcore. Craft beer wolf biodiesel banh mi messenger bag, whatever listicle austin man braid unicorn farm-to-table. Asymmetrical artisan scenester vape twee fingerstache selfies VHS gochujang kale chips. Tumblr heirloom normcore, selfies scenester man bun salvia before they sold out shabby chic ugh tilde. DIY pork belly leggings, seitan schlitz freegan chartreuse stumptown. Flexitarian whatever austin beard ugh vaporware locavore. Tumeric four dollar toast PBR&B lumbersexual, stumptown blog shaman williamsburg street art cardigan cliche coloring book umami. Chillwave prism gentrify hammock palo santo skateboard stumptown marfa gochujang waistcoat street art tilde kombucha try-hard. Succulents bespoke edison bulb, listicle 90's direct trade sartorial franzen irony. Activated charcoal mlkshk wayfarers mumblecore leggings. 90's butcher biodiesel yuccie gentrify pop-up readymade roof party PBR&B. Waistcoat hexagon tattooed helvetica heirloom locavore poke, kogi hoodie etsy pickled. Meggings fashion axe bespoke authentic YOLO banjo four dollar toast celiac drinking vinegar kombucha poke. Scenester post-ironic glossier hella franzen cliche taiyaki woke mlkshk. Unicorn scenester woke plaid DIY edison bulb.", book_id: 2},
])


