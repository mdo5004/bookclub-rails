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


Comment.create([
    { username: "mdo5004", page: 111, text: "Bacon ipsum dolor amet ribeye kevin tail cupim corned beef, meatloaf rump porchetta short ribs bresaola frankfurter pork capicola. Doner cupim bacon meatloaf. Turkey tenderloin chuck, ham hock swine tri-tip kielbasa burgdoggen alcatra salami tongue filet mignon ribeye. Prosciutto tenderloin salami, pork chop corned beef jowl kielbasa turkey. Cow tail meatball, doner shankle salami tongue chicken biltong picanha beef.", book_id: 1},
    { username: "rvo1987", page: 222, text: "Turducken doner meatball capicola rump, turkey sausage short ribs pastrami jowl kevin. Flank salami cow, ribeye pastrami corned beef chicken frankfurter bacon. Sirloin bresaola beef ground round, jerky burgdoggen short loin shank short ribs swine pork ham fatback. Alcatra jerky tenderloin shoulder tongue pig shankle drumstick turkey jowl chicken beef ribs doner. Venison strip steak shankle boudin pastrami porchetta prosciutto pork belly shank ribeye tongue burgdoggen. Burgdoggen hamburger pancetta, frankfurter leberkas turducken tongue cow beef ribs jerky porchetta swine alcatra t-bone fatback.", book_id: 1},    
    { username: "mdo5004", page: 111, text: "Pork chop short ribs rump, pork belly turducken bresaola ham hock kielbasa pork venison corned beef drumstick. Frankfurter prosciutto capicola tenderloin. Shank rump t-bone, pork chop ham hock pastrami shankle bacon sirloin cow short ribs turkey. Jerky doner andouille short ribs, kevin pork loin filet mignon ham corned beef porchetta hamburger tongue pastrami pork.", book_id: 1},
    { username: "rvo1987", page: 222, text: "Pork belly beef ribs burgdoggen short loin kevin. Filet mignon bacon pork belly short ribs andouille. Cow flank turkey bresaola chicken. Landjaeger swine alcatra, kielbasa ham hock t-bone chicken ham boudin tenderloin filet mignon venison chuck pork chop. Boudin shank salami burgdoggen turkey doner biltong bresaola ground round. Picanha chuck shank salami short loin shankle corned beef ball tip landjaeger tri-tip shoulder sirloin bacon pork belly biltong.", book_id: 1},
    { username: "mdo5004", page: 111, text: "Salami leberkas turkey, shank swine rump turducken meatloaf burgdoggen jerky cupim picanha brisket. Alcatra hamburger ground round pastrami, tail drumstick pork belly shoulder bresaola. Tenderloin frankfurter burgdoggen, short ribs pork loin rump leberkas swine sausage alcatra sirloin brisket. Tongue prosciutto sirloin, porchetta capicola flank tenderloin bresaola chicken doner. Porchetta frankfurter flank, jowl filet mignon chuck doner andouille beef. Pork loin fatback leberkas, beef ribs kevin pork belly swine.", book_id: 1},
    
    { username: "mdo5004", page: 111, text: "Bacon ipsum dolor amet ribeye kevin tail cupim corned beef, meatloaf rump porchetta short ribs bresaola frankfurter pork capicola. Doner cupim bacon meatloaf. Turkey tenderloin chuck, ham hock swine tri-tip kielbasa burgdoggen alcatra salami tongue filet mignon ribeye. Prosciutto tenderloin salami, pork chop corned beef jowl kielbasa turkey. Cow tail meatball, doner shankle salami tongue chicken biltong picanha beef.", book_id: 2},
    { username: "rvo1987", page: 222, text: "Turducken doner meatball capicola rump, turkey sausage short ribs pastrami jowl kevin. Flank salami cow, ribeye pastrami corned beef chicken frankfurter bacon. Sirloin bresaola beef ground round, jerky burgdoggen short loin shank short ribs swine pork ham fatback. Alcatra jerky tenderloin shoulder tongue pig shankle drumstick turkey jowl chicken beef ribs doner. Venison strip steak shankle boudin pastrami porchetta prosciutto pork belly shank ribeye tongue burgdoggen. Burgdoggen hamburger pancetta, frankfurter leberkas turducken tongue cow beef ribs jerky porchetta swine alcatra t-bone fatback.", book_id: 2},    
    { username: "mdo5004", page: 111, text: "Pork chop short ribs rump, pork belly turducken bresaola ham hock kielbasa pork venison corned beef drumstick. Frankfurter prosciutto capicola tenderloin. Shank rump t-bone, pork chop ham hock pastrami shankle bacon sirloin cow short ribs turkey. Jerky doner andouille short ribs, kevin pork loin filet mignon ham corned beef porchetta hamburger tongue pastrami pork.", book_id: 2},
    { username: "rvo1987", page: 222, text: "Pork belly beef ribs burgdoggen short loin kevin. Filet mignon bacon pork belly short ribs andouille. Cow flank turkey bresaola chicken. Landjaeger swine alcatra, kielbasa ham hock t-bone chicken ham boudin tenderloin filet mignon venison chuck pork chop. Boudin shank salami burgdoggen turkey doner biltong bresaola ground round. Picanha chuck shank salami short loin shankle corned beef ball tip landjaeger tri-tip shoulder sirloin bacon pork belly biltong.", book_id: 2},
    { username: "mdo5004", page: 111, text: "Salami leberkas turkey, shank swine rump turducken meatloaf burgdoggen jerky cupim picanha brisket. Alcatra hamburger ground round pastrami, tail drumstick pork belly shoulder bresaola. Tenderloin frankfurter burgdoggen, short ribs pork loin rump leberkas swine sausage alcatra sirloin brisket. Tongue prosciutto sirloin, porchetta capicola flank tenderloin bresaola chicken doner. Porchetta frankfurter flank, jowl filet mignon chuck doner andouille beef. Pork loin fatback leberkas, beef ribs kevin pork belly swine.", book_id: 2},
])