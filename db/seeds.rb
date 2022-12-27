puts "Destroying past data"

Book.destroy_all
Member.destroy_all
BookMember.destroy_all
Picture.destroy_all

puts "Creating Pictures..."
Picture.create!(image_url: 'https://i.imgur.com/vRMjVRk.jpg', year: 2004, description: 'Back row (L-R): Anne Baughman, Mary Helen Dolan, Ann Dillon,
Front row (L-R): Edna Shafer, Marcie Ver Ploeg, Martha Kelly, Susan Baruch, Margaret Beck
Photograph by Don Ver Ploeg')

Picture.create!(image_url: 'https://i.imgur.com/49lYnLj.jpg', year: 2007, description: 'Back row (L-R): Mary Helen Dolan, Susan Baruch, Debbie Cerrone, Edna Shafer, Marcie Ver Ploeg,
Front row (L-R): Margaret Beck, Ann Dillon, Nancy Warren-Oliver, Louise Beetz
Photograph by Don Ver Ploeg')
Picture.create!(image_url: 'https://i.imgur.com/yhq2XrP.jpg', year: 2010, description: 'L-R: Nancy Warren-Oliver, Marcie Ver Ploeg, Susan Baruch, Ann Dillon, Mary Helen Dolan, Lisa Tiets, Edna Shafer, Margaret Beck, Debbie Cerrone, Karin Stuart, Louise Beetz
Photograph by Bill Fowlkes')
Picture.create!(image_url: 'https://i.imgur.com/17mylni.jpg', year: 2017, description: 'Back row (L-R): Louise Beetz, Lizzie Roth, Susan Baruch, Mary Helen Dolan,
Middle row: Eleanor Newton, Nancy Warren-Oliver, Debbie Doyle, Lisa Tietz, Ann Dillon,
Floor row: Marjorie Relin, Marcie Ver Ploeg
Photograph by Don Ver Ploeg')
Picture.create!(image_url: 'https://i.imgur.com/3EMXmpL.png', year: 2020, description: '')
Picture.create!(image_url: 'https://i.imgur.com/mVtEZ0S.jpg', year: 2021, description: 'L-R: Nancy Warren-Oliver, Chris Carey, Marcie Ver Ploeg, Susan Baruch, Lisa Tietz, Mary Helen Dolan
Photograph by Bill Fowlkes')


puts "Creating members..."

member1 = Member.create!(name: "Susan Baruch", image: "https://i.imgur.com/vA1eXrk_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member2 = Member.create!(name: "Chris Carey", image: "https://i.imgur.com/tO2e1DM_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member3 = Member.create!(name: "Mary Helen Dolan", image: "https://i.imgur.com/ZKR9ZlC.jpg", active: true)
member4 = Member.create!(name: "Debbie Doyle", image: "https://i.imgur.com/lsy1eea_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member5 = Member.create!(name: "Linda Epstein", image: "", active: true)
member6 = Member.create!(name: "Eleanor Newton", image: "https://i.imgur.com/LhTV1JR_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member7 = Member.create!(name: "Lisa Tietz", image: "https://i.imgur.com/VccmAtX_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member8 = Member.create!(name: "Marcie Ver Ploeg", image: "https://i.imgur.com/2mVE0vg_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member9 = Member.create!(name: "Nancy Warren-Oliver", image: "https://i.imgur.com/PvsJB9z_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: true)
member10 = Member.create!(name: "Margaret Beck", image: "https://i.imgur.com/3XCBWcr.jpg", active: false)
member11 = Member.create!(name: "Marjorie Relin", image: "https://i.imgur.com/FronkHO_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: false)
member11 = Member.create!(name: "Martha Kelly", image: "https://i.imgur.com/NXgSl64_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: false)
member11 = Member.create!(name: "Edna Shafer", image: "https://i.imgur.com/8SxJK5G_d.jpg?maxwidth=520&shape=thumb&fidelity=high", active: false)
member11 = Member.create!(name: "Caroline Williams", image: "", active: false)

puts "Creating books..."

book1 = Book.create!(title: "Plain Song", author: "Kent Haruf", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388200586l/77156.jpg", fiction: true, leader: "Martha", meeting_date: "09/01/2000")

book2 = Book.create!(title: "Girl with the Pearl Earring", author: "Tracy Chevalier", image_url: "https://m.media-amazon.com/images/I/513hNCva+LL._AC_SY350_QL15_.jpg", fiction: true, leader: "Ann", meeting_date: "10/09/2000")

book3 = Book.create!(title: "Waiting", author: "Ha Jin", image_url: "https://m.media-amazon.com/images/I/41dA3ffZN6L._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "11/01/2000")

book4 = Book.create!(title: "Christmas Letters", author: "Lee Smith", image_url: "https://m.media-amazon.com/images/I/5106lmLKNyL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "12/01/2000")

book5 = Book.create!(title: "Girl in Hyacinth Blue", author: "Susan Vreeland", image_url: "https://m.media-amazon.com/images/I/518D87EETSL.jpg", fiction: true, leader: "Caroline", meeting_date: "01/01/2001")

book6 = Book.create!(title: "A Lesson Before Dying", author: "Earnest Gaines", image_url: "https://m.media-amazon.com/images/I/41nlE0ta0xL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "02/01/2001")

book7 = Book.create!(title: "House of Sand and Fog", author: "Andre Dubus", image_url: "https://m.media-amazon.com/images/I/41takrU3LeL.jpg", fiction: true, leader: "Margaret", meeting_date: "03/01/2001")

book8 = Book.create!(title: "Stones from the River", author: "Ursula Hegi", image_url: "https://m.media-amazon.com/images/I/51Ix6APpNsL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "04/01/2001")

book9 = Book.create!(title: "Prodigal Summer", author: "Barbara Kingsolver", image_url: "https://m.media-amazon.com/images/I/51habVcrqdL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "05/01/2001")

book10 = Book.create!(title: "The Bonesetter's Daughter", author: "Amy Tan", image_url: "https://m.media-amazon.com/images/I/51f2XAoZX9L.jpg", fiction: true, leader: "Marj", meeting_date: "06/01/2001")

book11 = Book.create!(title: "The Red Tent", author: "Anita Diamant", image_url: "https://m.media-amazon.com/images/I/51bplfrVj+L._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "09/01/2001")

book12 = Book.create!(title: "How the Irish Saved Civilization", author: "Thomas Cahill", image_url: "https://m.media-amazon.com/images/I/51g+AhzDC1L._AC_SY780_.jpg", fiction: false, leader: "Margaret", meeting_date: "10/01/2001")

book13 = Book.create!(title: "On the Occasion of my Last Afternoon", author: "Kaye Gibbons", image_url: "https://images-na.ssl-images-amazon.com/images/I/51FUjhpllGL._AC_UL600_SR600,600_.jpg", fiction: true, leader: "Marj", meeting_date: "11/01/2001")

book14 = Book.create!(title: "Christmas in Plains", author: "Jimmy Carter", image_url: "https://m.media-amazon.com/images/I/51Tg4tQRqNL.jpg", fiction: false, leader: "Caroline", meeting_date: "12/01/2001")

book15 = Book.create!(title: "The Waves", author: "Virginia Woolf", image_url: "https://res.cloudinary.com/bloomsbury-atlas/image/upload/w_360,c_scale/jackets/9781847497819.jpg", fiction: true, leader: "Sue", meeting_date: "01/01/2002")

book16 = Book.create!(title: "Jayber Crow", author: "Wendell Berry", image_url: "https://images-na.ssl-images-amazon.com/images/I/41G9dpDi1hL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Martha", meeting_date: "02/01/2002")

book17 = Book.create!(title: "Crossing to Safety", author: "Wallace Stegner", image_url: "https://m.media-amazon.com/images/I/51Qj5yHNTzL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "03/01/2002")

book18 = Book.create!(title: "A Painted House", author: "John Grisham", image_url: "https://images.penguinrandomhouse.com/cover/9780385337939", fiction: true, leader: "Marj", meeting_date: "04/01/2002")

book19 = Book.create!(title: "Slaughterhouse Five", author: "Kurt Vonnegut", image_url: "https://m.media-amazon.com/images/I/41-D+w0DPxL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "05/01/2002")

book20 = Book.create!(title: "Daughter of Fortune", author: "Isabel Allende", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1299666780l/16527.jpg", fiction: true, leader: "Ann", meeting_date: "06/01/2002")

book21 = Book.create!(title: "In Sunlight, In a Beautiful Garden", author: "Kathleen Cambor", image_url: "https://images-na.ssl-images-amazon.com/images/I/71G9sQOKNWL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Marcie", meeting_date: "07/01/2002")

book22 = Book.create!(title: "A Walk in the Woods", author: "Bill Bryson", image_url: "https://m.media-amazon.com/images/I/51vxoh0JFoL.jpg", fiction: false, leader: "Martha", meeting_date: "09/01/2002")

book23 = Book.create!(title: "The Man Who Was Thursday", author: "G.K. Chesterton", image_url: "https://pictures.abebooks.com/inventory/30636587761.jpg", fiction: true, leader: "Caroline", meeting_date: "10/01/2002")

book24 = Book.create!(title: "Leo Africanus", author: "Amin Maalouf", image_url: "https://m.media-amazon.com/images/I/51D8o-clopL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "11/01/2002")

book25 = Book.create!(title: "The Lovely Bones", author: "Alice Sebold", image_url: "https://m.media-amazon.com/images/I/41tJCcMb4kL._AC_SY780_.jpg", fiction: true, leader: "Edna", meeting_date: "12/01/2002")

book26 = Book.create!(title: "The Samurai's Garden", author: "Gail Tsukiyama", image_url: "https://m.media-amazon.com/images/I/51FMknVPH1L._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "01/01/2003")

book27 = Book.create!(title: "Einstein's Dream", author: "Alan Lightman", image_url: "https://m.media-amazon.com/images/I/41DKcyfvnBL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "02/01/2003")

book28 = Book.create!(title: "Nickel and Dimed", author: " Barbar Ehrenreich", image_url: "https://m.media-amazon.com/images/I/41SGzdBuDkL._AC_SY780_.jpg", fiction: false, leader: "Martha", meeting_date: "03/01/2003")

book29 = Book.create!(title: "Kindred", author: "Octavia Butler", image_url: "http://prodimage.images-bn.com/pimages/9781419728556_p0_v2_s1200x630.jpg", fiction: true, leader: "Ann", meeting_date: "04/01/2003")

book30 = Book.create!(title: "Enduring Love", author: "Ian McEwan", image_url: "https://m.media-amazon.com/images/I/71yTtSNH2LL.jpg", fiction: true, leader: "Marcie", meeting_date: "05/01/2003")

book31 = Book.create!(title: "Small Wonder", author: "Barbara Kingsolver", image_url: "https://m.media-amazon.com/images/I/51asNdO68uL._AC_SY780_.jpg", fiction: false, leader: "Sue", meeting_date: "06/01/2003")

book32 = Book.create!(title: "East of Eden", author: "John Steinbeck", image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/East_of_Eden_%281952_1st_ed_dust_jacket%29.jpg", fiction: true, leader: "Edna", meeting_date: "09/01/2003")

book33 = Book.create!(title: "The Secret Life of Bees", author: "Sue Monk Kidd", image_url: "https://m.media-amazon.com/images/I/51-rLlDOGpL.jpg", fiction: true, leader: "Mary Helen", meeting_date: "10/01/2003")

book34 = Book.create!(title: "Unless", author: "Carol Shields", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1525169040l/74462.jpg", fiction: true, leader: "Anne B.", meeting_date: "11/01/2003")

book35 = Book.create!(title: "Balzac and the Little Chinese Seamstress", author: "Dai Sijie", image_url: "https://m.media-amazon.com/images/I/51KSN3mQbcL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "12/01/2003")

book36 = Book.create!(title: "Tepper Isn't Going Out", author: "Calvin Trillin", image_url: "https://m.media-amazon.com/images/I/418CvqRoVcL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "01/01/2004")

book37 = Book.create!(title: "Bel Canto", author: "Ann Patchett", image_url: "https://m.media-amazon.com/images/I/51haZtw34HL._AC_SY780_.jpg", fiction: true, leader: "Julie", meeting_date: "02/01/2004")

book38 = Book.create!(title: "Peace Like a River", author: "Leif Enger", image_url: "https://m.media-amazon.com/images/I/41Rl91bqXLL._AC_SY780_.jpg", fiction: true, leader: "All", meeting_date: "03/01/2004")

book39 = Book.create!(title: "A Fine Balance", author: "Rohinton Mistry", image_url: "https://m.media-amazon.com/images/I/41iJcNKMbdL.jpg", fiction: true, leader: "Marcie", meeting_date: "04/01/2004")

book40 = Book.create!(title: "Founding Sisters and the Nineteenth Amendment", author: "Eleanor Clift", image_url: "https://m.media-amazon.com/images/I/41QBX8eGzxL._AC_SY780_.jpg", fiction: false, leader: "Martha", meeting_date: "05/01/2004")

book41 = Book.create!(title: "The Pickup", author: "Nadine Gordimer", image_url: "https://m.media-amazon.com/images/I/41kEfRn1QiL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "08/01/2004")

book42 = Book.create!(title: "The Great Fire", author: "Shirley Hazzard", image_url: "https://m.media-amazon.com/images/I/51ssiDqzSpL.jpg", fiction: true, leader: "Mary Helen", meeting_date: "09/01/2004")

book43 = Book.create!(title: "Behind the Scenes at the Museum", author: "Kate Atkinson", image_url: "https://m.media-amazon.com/images/I/51XsCOygUIS.jpg", fiction: true, leader: "Edma", meeting_date: "10/01/2004")

book44 = Book.create!(title: "The Transit of Venus", author: "Shirley Hazzard", image_url: "https://m.media-amazon.com/images/I/516OvfecppL._AC_SY350_QL15_.jpg", fiction: true, leader: "Margaret", meeting_date: "11/01/2004")

book45 = Book.create!(title: "Greenwillow", author: "B.J. Chute", image_url: "https://www.nationalbook.org/wp-content/uploads/2015/08/1957_Greenwillow-by-B.J.-Chute.jpg", fiction: true, leader: "Margaret", meeting_date: "12/01/2004")

book46 = Book.create!(title: "Madam Secretary", author: "Madeleine Albright", image_url: "https://target.scene7.com/is/image/Target/GUEST_da9d99b0-6dff-4a25-b5b9-02c128ea7003", fiction: false, leader: "Ann", meeting_date: "01/01/2005")

book47 = Book.create!(title: "The Kite Runner", author: "Khaled Hosseini", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1579036753l/77203._SY475_.jpg", fiction: true, leader: "Martha", meeting_date: "02/01/2005")

book48 = Book.create!(title: "Metro Stop Dostoevsky", author: "Ingrid Bengis", image_url: "https://mpd-biblio-covers.imgix.net/9781429998833.jpg", fiction: true, leader: "Marcie", meeting_date: "03/01/2005")

book49 = Book.create!(title: "The Reader", author: "Bernhard Schlink", image_url: "https://m.media-amazon.com/images/I/41gH-+tg4IS._AC_SY780_.jpg", fiction: true, leader: "Linda", meeting_date: "04/01/2005")

book50 = Book.create!(title: "Servants of the Map", author: "Andrea Barrett", image_url: "http://prodimage.images-bn.com/pimages/9780393323573_p0_v3_s1200x630.jpg", fiction: true, leader: "Edna", meeting_date: "05/01/2005")

book51 = Book.create!(title: "The Namesake", author: "Jhumpa Lahiri", image_url: "http://prodimage.images-bn.com/pimages/9780358062684_p0_v6_s1200x630.jpg", fiction: true, leader: "Sue", meeting_date: "06/01/2005")

book52 = Book.create!(title: "Uncle Tom's Cabin", author: "Harriet Beecher Stowe", image_url: "https://m.media-amazon.com/images/I/51NX4D56gFL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "10/01/2005")

book53 = Book.create!(title: "Saturday", author: "Ian McEwan", image_url: "https://m.media-amazon.com/images/I/51FDBGcvGIL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "11/01/2005")

book54 = Book.create!(title: "Pomegranate Soup", author: "Marsha Mehran", image_url: "https://m.media-amazon.com/images/I/51LibwXrGvL._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "01/01/2006")

book55 = Book.create!(title: "Name All the Animals", author: "Allison Smith", image_url: "https://m.media-amazon.com/images/I/417jwf2sqOL._AC_SY780_.jpg", fiction: false, leader: "Mary Helen", meeting_date: "02/01/2006")

book56 = Book.create!(title: "The Final Solution", author: "Michael Chabon", image_url: "https://m.media-amazon.com/images/I/51Fopegs5nL._AC_SY780_.jpg", fiction: true, leader: "Edna", meeting_date: "03/01/2006")

book57 = Book.create!(title: "Silas Marner", author: "George Eliot", image_url: "https://m.media-amazon.com/images/I/51dAFdDD+nL._AC_SY780_.jpg", fiction: true, leader: "Linda", meeting_date: "04/01/2006")

book58 = Book.create!(title: "Madame Dread", author: "Kathie Klarreich", image_url: "https://www.boldtypebooks.com/wp-content/uploads/2017/06/9781560257806.jpg?fit=1731%2C2600", fiction: false, leader: "Sue", meeting_date: "05/01/2006")

book59 = Book.create!(title: "Snow Flower and the Secret Fan", author: "Lisa See", image_url: "https://m.media-amazon.com/images/I/51Nd2hCraeL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "06/01/2006")

book60 = Book.create!(title: "All the King's Men", author: "Robert Penn Warren", image_url: "https://i0.wp.com/mookseandgripes.com/reviews/wp-content/uploads/2009/01/all-the-kings-men1.jpg?resize=341%2C525", fiction: true, leader: "Margaret", meeting_date: "09/01/2006")

book61 = Book.create!(title: "Emma's War", author: "Deborah Scroggins", image_url: "https://m.media-amazon.com/images/I/61yqxii7j4L._AC_SY780_.jpg", fiction: false, leader: "Nancy", meeting_date: "10/01/2006")

book62 = Book.create!(title: "The News from Paraguay", author: "Lily Tuck", image_url: "https://m.media-amazon.com/images/I/515fLc2epjL.jpg", fiction: true, leader: "Marcie", meeting_date: "11/01/2006")

book63 = Book.create!(title: "Sailing Alone Around the Room", author: "Billy Collins", image_url: "https://m.media-amazon.com/images/I/51hcZhkqPuL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "12/01/2006")

book64 = Book.create!(title: "The Music Lesson", author: "Katherine Weber", image_url: "https://m.media-amazon.com/images/I/51BbI+nZMuL._AC_SY780_.jpg", fiction: true, leader: "Marj", meeting_date: "01/01/2007")

book65 = Book.create!(title: "Life of Pi", author: "Yann Martel", image_url: "https://m.media-amazon.com/images/I/51UMulae7FL.jpg", fiction: true, leader: "Debbie C.", meeting_date: "02/01/2007")

book66 = Book.create!(title: "The Memory Keeper's Daughter", author: "Kim Edwards", image_url: "https://m.media-amazon.com/images/I/41OBzIETYUL._AC_SY780_.jpg", fiction: true, leader: "Edna", meeting_date: "03/01/2007")

book67 = Book.create!(title: "Water for Elephants", author: "Sara Gruen", image_url: "https://d1bh17hrbsh0lf.cloudfront.net/product/9781565125605/cover/9781565125605.jpg", fiction: true, leader: "Sue", meeting_date: "04/01/2007")

book68 = Book.create!(title: "The Buffalo Soldier", author: "Chris Bohjalian", image_url: "https://m.media-amazon.com/images/I/5175EdmtzXL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "05/01/2007")

book69 = Book.create!(title: "Gilead", author: "Marilynne Robinson", image_url: "https://target.scene7.com/is/image/Target/GUEST_c70e5118-3997-4713-a794-650ea3e9bc0a?wid=488&hei=488&fmt=pjpeg", fiction: true, leader: "Margaret", meeting_date: "06/01/2007")

book70 = Book.create!(title: "The Fountain Overflows", author: "Rebecca West", image_url: "https://cdn.shopify.com/s/files/1/0726/9203/products/The-Fountain-Overflows_2048x2048.jpg?v=1528394330", fiction: true, leader: "Kathleen", meeting_date: "09/01/2007")

book71 = Book.create!(title: "The Echo Maker", author: "Richard Powers", image_url: "https://m.media-amazon.com/images/I/41lHLbU3TgL._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "10/01/2007")

book72 = Book.create!(title: "One Thousand White Women", author: "Jim Fergus", image_url: "https://m.media-amazon.com/images/I/51YrxjP5g7L.jpg", fiction: true, leader: "Edna", meeting_date: "11/01/2007")

book73 = Book.create!(title: "The Locket", author: "Richard Paul Evans", image_url: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781668000434/the-locket-9781668000434_hr.jpg", fiction: true, leader: "Debbie C.", meeting_date: "12/01/2007")

book74 = Book.create!(title: "Intuition", author: "Allegra Goodman", image_url: "https://m.media-amazon.com/images/I/51VC6Z9YREL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "01/01/2008")

book75 = Book.create!(title: "A Thousand Splendid Suns", author: "Khaled Hosseini", image_url: "https://m.media-amazon.com/images/I/51t9FW3VchL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "02/01/2008")

book76 = Book.create!(title: "Devil in the White City", author: "Erik Larson", image_url: "https://m.media-amazon.com/images/I/41i6RKW1IXL._AC_SY780_.jpg", fiction: false, leader: "Margaret", meeting_date: "03/01/2008")

book77 = Book.create!(title: "The Glass Castle", author: "Jeannette Walls", image_url: "https://m.media-amazon.com/images/I/41SV07xgbNL._AC_SY780_.jpg", fiction: false, leader: "Louise", meeting_date: "04/01/2008")

book78 = Book.create!(title: "Loving Frank", author: "Nancy Horan", image_url: "https://m.media-amazon.com/images/I/51RLkiMTbmL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "05/01/2008")

book79 = Book.create!(title: "Abeng", author: "Michelle Cliff", image_url: "https://images-na.ssl-images-amazon.com/images/I/91XOQSxXtxL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Kathleen", meeting_date: "06/01/2008")

book80 = Book.create!(title: "The Book Thief", author: "Markus Zusak", image_url: "https://m.media-amazon.com/images/I/51Vll80ms2L._AC_SY780_.jpg", fiction: true, leader: "Edna", meeting_date: "09/01/2008")

book81 = Book.create!(title: "My Antonia", author: "Willa Cather", image_url: "https://pictures.abebooks.com/inventory/17995604134.jpg", fiction: true, leader: "Margaret", meeting_date: "10/01/2008")

book82 = Book.create!(title: "The Tea-Olive Bird Watching Society", author: "August Trobaugh", image_url: "https://m.media-amazon.com/images/I/51CR1NKq-5L._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "11/01/2008")

book83 = Book.create!(title: "Letter to My Daughter", author: "Maya Angelou", image_url: "https://m.media-amazon.com/images/I/51Jqfc1fq3L.jpg", fiction: false, leader: "Marcie", meeting_date: "12/01/2008")

book84 = Book.create!(title: "Memoirs of a Geisha", author: "Arthur Golden", image_url: "https://m.media-amazon.com/images/I/51O9HqW8ZAL._AC_SY780_.jpg", fiction: true, leader: "Debbie C.", meeting_date: "01/01/2009")

book85 = Book.create!(title: "The Ministry of Special Cases", author: "Nathan Englander", image_url: "https://m.media-amazon.com/images/I/51YOkLTmvZL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "02/01/2009")

book86 = Book.create!(title: "The Guernsey Literary and Potato Peel Pie Society", author: "Shaffer & Barrows", image_url: "", fiction: true, leader: "Mary Helen", meeting_date: "03/01/2009")

book87 = Book.create!(title: "Dewey: The Small-Town Library Cat Who Touched the World", author: "Bret Witter and Vicki Myron", image_url: "https://m.media-amazon.com/images/I/51yxEUjeasL._AC_SY780_.jpg", fiction: false, leader: "Ann", meeting_date: "04/01/2009")

book88 = Book.create!(title: "Run", author: "Ann Patchett", image_url: "https://m.media-amazon.com/images/I/51Jg4tat5iL.jpg", fiction: true, leader: "", meeting_date: "05/01/2009")

book89 = Book.create!(title: "For Your Eyes Only", author: "Ian Fleming", image_url: "https://upload.wikimedia.org/wikipedia/en/6/66/For_Your_Eyes_Only-Ian_Fleming.jpg", fiction: true, leader: "All", meeting_date: "06/01/2009")

book90 = Book.create!(title: "The Photograph", author: "Penelope Lively", image_url: "https://m.media-amazon.com/images/I/41jScTiOcdL._AC_SY780_.jpg", fiction: true, leader: "", meeting_date: "09/01/2009")

book91 = Book.create!(title: "Out Stealing Horses", author: "Per Petterson and Anne Born", image_url: "https://m.media-amazon.com/images/I/41Q7VoRmfXL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "10/01/2009")

book92 = Book.create!(title: "Complications", author: "Atul Gawande", image_url: "https://m.media-amazon.com/images/I/41u49MA74DL._AC_SY780_.jpg", fiction: false, leader: "Karin", meeting_date: "11/01/2009")

book93 = Book.create!(title: "Olive Kitterige", author: "Elizabeth Strout", image_url: "https://images.penguinrandomhouse.com/cover/9780812971835", fiction: true, leader: "Ann", meeting_date: "12/01/2009")

book94 = Book.create!(title: "Three Cups of Tea", author: "G. Mortenson and D. Relin", image_url: "https://upload.wikimedia.org/wikipedia/en/f/f3/ThreeCupsOfTea_BookCover.jpg", fiction: true, leader: "Nancy", meeting_date: "01/01/2010")

book95 = Book.create!(title: "The Wednesday Sisters", author: "Meg Waite Clayton", image_url: "https://m.media-amazon.com/images/I/51ke98FfmFL.jpg", fiction: true, leader: "Lisa", meeting_date: "02/01/2010")

book96 = Book.create!(title: "Gourmet Rhapsody", author: "Muriel Barbery", image_url: "https://m.media-amazon.com/images/I/4171wj1FCNL.jpg", fiction: true, leader: "Marcie", meeting_date: "03/15/2010")

book97 = Book.create!(title: "The Elegance of the Hedgehog", author: "Muriel Barbery", image_url: "https://m.media-amazon.com/images/I/41JH5BsZaPL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "04/19/2010")

book98 = Book.create!(title: "Home", author: "Marilynne Robinson", image_url: "https://m.media-amazon.com/images/I/419cE5gZCpL._AC_SY780_.jpg", fiction: true, leader: "Louise", meeting_date: "05/17/2010")

book99 = Book.create!(title: "Sarah's Key", author: "Tatiana de Rosnay", image_url: "https://m.media-amazon.com/images/I/51vJkmrfGaL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "06/21/2010")

book100 = Book.create!(title: "Hotel on the Corner of Bitter and Sweet", author: "Jamie Ford", image_url: "https://m.media-amazon.com/images/I/51ne8CqLnML.jpg", fiction: true, leader: "Edna", meeting_date: "09/20/2012")

book101 = Book.create!(title: "To Kill a Mockingbird", author: "Harper Lee ", image_url: "https://media.glamour.com/photos/56e1f3c462b398fa64cbd304/master/w_1600%2Cc_limit/entertainment-2016-02-18-main.jpg", fiction: true, leader: "Margaret", meeting_date: "10/18/2010")

book102 = Book.create!(title: "The House of Mirth", author: "Edith Wharton", image_url: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781471152481/the-house-of-mirth-9781471152481_hr.jpg", fiction: true, leader: "Louise", meeting_date: "11/15/2010")

book103 = Book.create!(title: "A Girl Named Zippy", author: "Haven Kimmel", image_url: "https://upload.wikimedia.org/wikipedia/en/a/a5/A_Girl_Named_Zippy.jpg", fiction: true, leader: "Sue", meeting_date: "01/17/2011")

book104 = Book.create!(title: "The Help", author: "Kathryn Stockett", image_url: "https://m.media-amazon.com/images/I/41rc1NK5nIL._AC_SY780_.jpg", fiction: true, leader: "Kristin", meeting_date: "01/17/2011")

book105 = Book.create!(title: "Let the Great World Spin", author: "Colum McCann", image_url: "https://m.media-amazon.com/images/I/511sJ0A3irL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "02/28/2011")

book106 = Book.create!(title: "My Reading Life", author: "Pat Conroy", image_url: "https://m.media-amazon.com/images/I/51Lz+xi4Y6L._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "04/11/2011")

book107 = Book.create!(title: "Cutting for Stone", author: "Abraham Verghese", image_url: "https://target.scene7.com/is/image/Target/GUEST_3b30ea64-908d-4b15-874b-651fc84fa8f2?wid=488&hei=488&fmt=pjpeg", fiction: true, leader: "Mary Helen", meeting_date: "05/16/2011")

book108 = Book.create!(title: "A Death in the Family", author: "James Agee", image_url: "https://m.media-amazon.com/images/I/51LNmPVQPuL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "06/20/2011")

book109 = Book.create!(title: "White Noise", author: "Don Delillo", image_url: "https://m.media-amazon.com/images/I/61Rldzfu0oL._AC_SY780_.jpg", fiction: true, leader: "Louise", meeting_date: "09/19/2011")

book110 = Book.create!(title: "Someone Knows my Name", author: "Lawrence Hill", image_url: "https://m.media-amazon.com/images/I/516MM9dVQ0L.jpg", fiction: true, leader: "Sue", meeting_date: "10/17/2011")

book111 = Book.create!(title: "Major Pettigrew’s Last Stand", author: "Helen Simonson", image_url: "https://images-na.ssl-images-amazon.com/images/I/91vrJQsMrYL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Edna", meeting_date: "11/21/2011")

book112 = Book.create!(title: "The Three Weissmans of Westport", author: "Cathleen Schine", image_url: "https://images-na.ssl-images-amazon.com/images/I/81n5HDImcPL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Ann", meeting_date: "12/19/2011")

book113 = Book.create!(title: "The Water is Wide", author: "Pat Conroy", image_url: "https://m.media-amazon.com/images/I/51Sinl9BkEL.jpg", fiction: true, leader: "Nancy", meeting_date: "01/16/2012")

book114 = Book.create!(title: "Half Broke Horses", author: "Jeannette Walls", image_url: "https://upload.wikimedia.org/wikipedia/en/b/b4/Walls_Half_broke_horses.jpg", fiction: true, leader: "Lisa", meeting_date: "02/20/2012")

book115 = Book.create!(title: "The Madonnas of Leningrad", author: "Debra Dean", image_url: "https://m.media-amazon.com/images/I/51HVtcvdoiL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "03/19/2012")

book116 = Book.create!(title: "A Movable Feast", author: "Ernest Hemingway", image_url: "https://upload.wikimedia.org/wikipedia/en/a/aa/MoveableFeast.jpg", fiction: true, leader: "Susan", meeting_date: "04/16/2012")

book117 = Book.create!(title: "Death Comes to Pemberley", author: "P.D. James", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1341917165l/13142231.jpg", fiction: true, leader: "Becky", meeting_date: "05/21/2012")

book118 = Book.create!(title: "Bliss, Remembered", author: "Frank Deford", image_url: "https://m.media-amazon.com/images/I/51qMxBmYcxL._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "06/18/2012")

book119 = Book.create!(title: "Disgrace", author: "J.M. Coetzee", image_url: "https://upload.wikimedia.org/wikipedia/en/3/3d/JMCoetzee_Disgrace.jpg", fiction: true, leader: "Margaret", meeting_date: "09/10/2012")

book120 = Book.create!(title: "The Good Thief", author: "Hannah Tinti", image_url: "https://m.media-amazon.com/images/I/5182lVEfiuL._AC_SY780_.jpg", fiction: true, leader: "Edna", meeting_date: "10/15/2012")

book121 = Book.create!(title: "Year of Wonders", author: "Geraldine Brooks", image_url: "https://upload.wikimedia.org/wikipedia/en/c/cb/YearofWonders.jpg", fiction: true, leader: "Sue", meeting_date: "11/19/2012")

book122 = Book.create!(title: "Clybourne Park", author: "Bruce Norris", image_url: "https://m.media-amazon.com/images/I/41mB6SvTneL.jpg", fiction: true, leader: "Marcie", meeting_date: "01/21/2013")

book123 = Book.create!(title: "Into the Beautiful North", author: "Luis Urrea", image_url: "https://www.arts.gov/sites/default/files/Into-the-Beautiful-North-cover.JPG", fiction: true, leader: "Mary Helen", meeting_date: "03/18/2013")

book124 = Book.create!(title: "The Round House", author: "Louise Erdrich", image_url: "https://m.media-amazon.com/images/I/51Kzypo8CKL.jpg", fiction: true, leader: "Linda", meeting_date: "04/15/2013")

book125 = Book.create!(title: "The Sense of an Ending", author: "Julian Barnes", image_url: "https://m.media-amazon.com/images/I/51dwYEKjHDL.jpg", fiction: true, leader: "Ann", meeting_date: "05/20/2013")

book126 = Book.create!(title: "Rules of Civility", author: "Amor Towles", image_url: "https://m.media-amazon.com/images/I/51DNsLcAe3L._AC_SY780_.jpg", fiction: true, leader: "Debbie D.", meeting_date: "06/17/2013")

book127 = Book.create!(title: "The Orphan Train", author: "Christina Baker Kline", image_url: "http://prodimage.images-bn.com/pimages/9780061950728_p0_v11_s1200x630.jpg", fiction: true, leader: "Sue", meeting_date: "09/16/2013")

book128 = Book.create!(title: "The Chaperone", author: "Laura Moriarty", image_url: "https://m.media-amazon.com/images/I/41BLuX-9rGL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "10/21/2013")

book129 = Book.create!(title: "The Corner Stone", author: "Julie Smutko Daugherty", image_url: "https://i.ebayimg.com/images/g/7c0AAOSw1WdjNuO~/s-l640.jpg", fiction: true, leader: "Ann", meeting_date: "11/18/2013")

book130 = Book.create!(title: "Where’d You Go, Bernadette", author: "Maria Semple", image_url: "https://m.media-amazon.com/images/I/41Kht0Nw6ML._AC_SY780_.jpg", fiction: true, leader: "Jessica", meeting_date: "12/16/2013")

book131 = Book.create!(title: "We Are All Completely Beside Ourselves", author: "Karen Fowler", image_url: "https://m.media-amazon.com/images/I/51QvuWh-znL._AC_SY780_.jpg", fiction: true, leader: "Louise", meeting_date: "01/20/2014")

book132 = Book.create!(title: "The Snow Child", author: "Eowyn Ivey", image_url: "https://m.media-amazon.com/images/I/41kUPvO09VL.jpg", fiction: true, leader: "Nancy", meeting_date: "02/17/2014")

book133 = Book.create!(title: "La’s Orchestra Saves the World", author: "Alexander McCall Smith", image_url: "https://images-na.ssl-images-amazon.com/images/I/91hBzAajNXL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Margaret", meeting_date: "03/17/2014")

book134 = Book.create!(title: "Dear Life: Stories", author: "Alice Munro", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1333579320l/13530981.jpg", fiction: true, leader: "Mary Helen", meeting_date: "04/21/2014")

book135 = Book.create!(title: "Mary Coin", author: "Marisa Silver", image_url: "https://m.media-amazon.com/images/I/51nu2EqfXRL._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "05/19/2014")

book136 = Book.create!(title: "My Beloved World", author: "Sonia Sotomayor", image_url: "https://m.media-amazon.com/images/I/51laKvZ7gTL._AC_SY780_.jpg", fiction: true, leader: "Debbie", meeting_date: "06/14/2014")

book137 = Book.create!(title: "And the Mountains Echoed", author: "Khaled Hosseini", image_url: "https://m.media-amazon.com/images/I/51LPx-tr1hL._AC_SY780_.jpg", fiction: true, leader: "Louise", meeting_date: "09/15/2014")

book138 = Book.create!(title: "Telex from Cuba", author: "Rachel Kushner", image_url: "https://m.media-amazon.com/images/I/41rPV-AVGhL._AC_SY780_.jpg", fiction: true, leader: "Margaret", meeting_date: "10/20/2014")

book145 = Book.create!(title: "The Light Between Oceans", author: "M.L. Stedman", image_url: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781451681758/the-light-between-oceans-9781451681758_hr.jpg", fiction: true, leader: "Sue", meeting_date: "11/17/2014")

book146 = Book.create!(title: "The Pecan Man", author: "Cassie Dandridge Selleck", image_url: "https://m.media-amazon.com/images/I/51La3eTVe8L.jpg", fiction: true, leader: "Lisa", meeting_date: "12/15/2014")

book147 = Book.create!(title: "Wait Till Next Year", author: "Doris Kearns Goodwin", image_url: "https://www.publishersweekly.com/cover/9780684824895", fiction: true, leader: "Jodi", meeting_date: "01/19/2015")

book148 = Book.create!(title: "The Age of Miracles", author: "Karen Thompson Walker", image_url: "https://m.media-amazon.com/images/I/51+02zCFsSL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "02/16/2015")

book149 = Book.create!(title: "The Art Forger", author: "B.A. Shapiro", image_url: "https://m.media-amazon.com/images/I/41J8KL6wHpL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "04/20/2015")

book150 = Book.create!(title: "Winter in the Blood", author: "James Welch", image_url: "https://m.media-amazon.com/images/I/5165Vd5HZYL._AC_SY580_.jpg", fiction: true, leader: "Nancy", meeting_date: "05/18/2015")

book151 = Book.create!(title: "Second Suns", author: "David Relin", image_url: "https://m.media-amazon.com/images/I/51MCTUAgSsL._AC_SY780_.jpg", fiction: true, leader: "Debbie", meeting_date: "06/15/2015")

book152 = Book.create!(title: "All the Light We Cannot See", author: "Anthony Doerr", image_url: "https://m.media-amazon.com/images/I/51uOK5inzuL._AC_SY780_.jpg", fiction: true, leader: "Mary Helen", meeting_date: "09/21/2015")

book153 = Book.create!(title: "Eight Months on Ghazzah Street", author: "Hilary Mantel", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1564603456l/101925.jpg", fiction: true, leader: "Margaret", meeting_date: "10/19/2015")

book154 = Book.create!(title: "Our Souls at Night", author: "Kent Haruf", image_url: "http://prodimage.images-bn.com/pimages/9781101911921_p0_v3_s1200x630.jpg", fiction: true, leader: "Marcie", meeting_date: "11/16/2015")

book155 = Book.create!(title: "The Children Act", author: "Ian McEwan", image_url: "https://m.media-amazon.com/images/I/517HQNBbhRL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "12/21/2015")

book156 = Book.create!(title: "Station Eleven", author: "Emily St. John Mandel", image_url: "https://m.media-amazon.com/images/I/51VY9i6ckiL._AC_SY780_.jpg", fiction: true, leader: "Marjorie", meeting_date: "01/18/2016")

book157 = Book.create!(title: "Queen of the Fall", author: "Sonja Livingston", image_url: "https://m.media-amazon.com/images/I/41TKIMrgNlL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "02/15/2016")

book158 = Book.create!(title: "Ghostbread", author: "Sonja Livingston", image_url: "https://m.media-amazon.com/images/I/41KWNGQZ2KL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "02/15/2016")

book159 = Book.create!(title: "The Marriage of Opposites", author: "Alice Hoffman", image_url: "https://m.media-amazon.com/images/I/41f2CoAAGjL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "04/18/2016")

book160 = Book.create!(title: "Euphoria", author: "Lily King", image_url: "https://m.media-amazon.com/images/I/51bgvWOsckL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "05/16/2016")

book161 = Book.create!(title: "The Sympathizer", author: "Viet Thanh Nguyen", image_url: "https://m.media-amazon.com/images/I/51+U33Tf8NL.jpg", fiction: true, leader: "All", meeting_date: "06/20/2016")

book162 = Book.create!(title: "The Prize", author: "Dale Russakoff", image_url: "https://d28hgpri8am2if.cloudfront.net/book_images/cvr9781439110126_9781439110126_hr.jpg", fiction: true, leader: "Debbie", meeting_date: "09/19/2016")

book163 = Book.create!(title: "My Brilliant Friend", author: "Elena Ferrante", image_url: "https://m.media-amazon.com/images/I/51SareCmCFL._SL500_.jpg", fiction: true, leader: "Marjorie", meeting_date: "10/17/2016")

book164 = Book.create!(title: "A Manual for Cleaning Women", author: "Lucia Berlin", image_url: "https://m.media-amazon.com/images/I/41hnvxz9GAL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "11/21/2016")

book165 = Book.create!(title: "Neverhome", author: "Laird Hunt", image_url: "https://m.media-amazon.com/images/I/41cqBCaBF4L._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "12/18/2016")

book166 = Book.create!(title: "Here Comes Trouble: Stories from My Life", author: "Michael Moore", image_url: "https://m.media-amazon.com/images/I/51Lcp4V-YjL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "01/16/2017")

book168 = Book.create!(title: "The Enchanted", author: "Rene Denfeld", image_url: "https://m.media-amazon.com/images/I/41gaV31-6kL.jpg", fiction: true, leader: "Eleanor", meeting_date: "03/06/2017")

book169 = Book.create!(title: "Ordinary Grace", author: "William Kent Krueger", image_url: "https://m.media-amazon.com/images/I/51Lck4MddFL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "04/17/2017")

book170 = Book.create!(title: "The Forgotten Room", author: "Karen White, Beatriz Williams, and Lauren Willig", image_url: "https://images-na.ssl-images-amazon.com/images/I/91sXqwM6X3L._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Ann", meeting_date: "05/15/2017")

book171 = Book.create!(title: "Commonwealth", author: "Ann Patchett", image_url: "https://m.media-amazon.com/images/I/51Ix-oAS0zL._AC_SY780_.jpg", fiction: true, leader: "All", meeting_date: "06/19/2017")

book172 = Book.create!(title: "A Gentleman in Moscow", author: "Amor Towles", image_url: "https://m.media-amazon.com/images/I/51Sp3yhGIQL._AC_SY780_.jpg", fiction: true, leader: "Debbie", meeting_date: "08/28/2017")

book173 = Book.create!(title: "Brown Girl Dreaming", author: "Jacqueline Woodson", image_url: "https://m.media-amazon.com/images/I/51MXdrJYBtL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "09/18/2017")

book174 = Book.create!(title: "Another Brooklyn", author: "Jacqueline Woodson", image_url: "https://upload.wikimedia.org/wikipedia/en/5/50/Another_Brooklyn_-_bookcover.jpg", fiction: true, leader: "Sue", meeting_date: "09/18/2017")

book175 = Book.create!(title: "Daring to Drive", author: "Manal al-Sharif", image_url: "https://m.media-amazon.com/images/I/51mzo0hAxhL._AC_SY780_.jpg", fiction: true, leader: "Marjorie", meeting_date: "10/16/2017")

book176 = Book.create!(title: "A Dictionary of Mutual Understanding", author: "Jackie Copleton", image_url: "https://m.media-amazon.com/images/I/515wh6Z+dzL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "11/20/2017")

book177 = Book.create!(title: "The Yellow House: Van Gogh, Gauguin, and Nine Turbulent Weeks in Arles", author: "Martin Gayford", image_url: "https://m.media-amazon.com/images/I/51XES6smOvL.jpg", fiction: true, leader: "Marcie", meeting_date: "12/18/2017")

book178 = Book.create!(title: "Before We Were Yours", author: "Lisa Wingate", image_url: "https://m.media-amazon.com/images/I/41VcPtNJyeL._AC_SY780_.jpg", fiction: true, leader: "Ann", meeting_date: "01/29/2018")

book179 = Book.create!(title: "The Distance Between Us", author: "Reyna Grande", image_url: "https://m.media-amazon.com/images/I/512vTqD1NwL._AC_SY780_.jpg", fiction: true, leader: "Eleanor", meeting_date: "03/12/2018")

book180 = Book.create!(title: "Lillian Boxfish Takes a Walk", author: "Kathleen Rooney", image_url: "https://m.media-amazon.com/images/I/41lHCtiWfxL._AC_SY780_.jpg", fiction: true, leader: "Louise", meeting_date: "04/16/2018")

book181 = Book.create!(title: "The Housekeeper and the Professor", author: "Yoko Ogawa", image_url: "https://m.media-amazon.com/images/I/41+clymoEPL._AC_SY780_.jpg", fiction: true, leader: "Marjorie", meeting_date: "05/21/2018")

book182 = Book.create!(title: "A Piece of the World", author: "Christina Baker Kline", image_url: "https://m.media-amazon.com/images/I/51IFst6o6wL.jpg", fiction: true, leader: "Lisa", meeting_date: "06/19/2018")

book183 = Book.create!(title: "Beartown", author: "Fredrik Backman", image_url: "https://m.media-amazon.com/images/I/51h9X4EtrJL._AC_SY780_.jpg", fiction: true, leader: "Marjorie", meeting_date: "09/17/2018")

book184 = Book.create!(title: "An American Marriage", author: "Tayari Jones", image_url: "https://m.media-amazon.com/images/I/51OJLmjJavL.jpg", fiction: true, leader: "Tayari Jones", meeting_date: "10/15/2018")

book185 = Book.create!(title: "Uncommon Type: Some Stories", author: "Tom Hanks", image_url: "https://m.media-amazon.com/images/I/41ZdAngJK3L._AC_SY780_.jpg", fiction: true, leader: "All", meeting_date: "11/19/2018")

book186 = Book.create!(title: "The Tea Girl of Hummingbird Lane", author: "Lisa See", image_url: "https://m.media-amazon.com/images/I/51w9XH2iCvL._AC_SY780_.jpg", fiction: true, leader: "Marcie", meeting_date: "10/17/2018")

book187 = Book.create!(title: "Strangers Tend to Tell Me Things", author: "Amy Dickenson", image_url: "https://m.media-amazon.com/images/I/51LLJDTr6DL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "02/11/2019")

book188 = Book.create!(title: "Born a Crime", author: "Trevor Noah", image_url: "https://images.penguinrandomhouse.com/cover/9780399588198", fiction: true, leader: "Lisa", meeting_date: "03/18/2019")

book189 = Book.create!(title: "Sing For Your Life", author: "Celeste Ng", image_url: "https://m.media-amazon.com/images/I/51gt7WhP6OL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "04/15/1019")

book190 = Book.create!(title: "Little Fires Everywhere", author: "Celeste Ng", image_url: "https://m.media-amazon.com/images/I/51XWy95kQjL._AC_SY780_.jpg", fiction: true, leader: "Eleanor", meeting_date: "05/13/2019")

book191 = Book.create!(title: "Their Eyes Were Watching God", author: "Zora Neale Hurston", image_url: "https://m.media-amazon.com/images/I/61qmkrY-PUL._AC_SY780_.jpg", fiction: true, leader: "Marjorie", meeting_date: "06/17/2019")

book192 = Book.create!(title: "The Overstory", author: "Richard Powers", image_url: "https://m.media-amazon.com/images/I/51yiDXr0zJL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "09/16/2019")

book193 = Book.create!(title: "The Rent Collector", author: "Comron Wright", image_url: "https://images-na.ssl-images-amazon.com/images/I/9107aJNgftL._AC_UL900_SR615,900_.jpg", fiction: true, leader: "Marjorie", meeting_date: "09/16/2019")

book194 = Book.create!(title: "Home", author: "Toni Morrison", image_url: "https://images.penguinrandomhouse.com/cover/9780307740915", fiction: true, leader: "Lisa", meeting_date: "10/21/2019")

book195 = Book.create!(title: "The Readers of Broken Wheel Recommend", author: "Katarina Bivald", image_url: "https://m.media-amazon.com/images/I/61DxFluHCmL._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "01/27/2020")

book196 = Book.create!(title: "Educated", author: "Tara Westover", image_url: "https://m.media-amazon.com/images/I/417zjFiUwEL._AC_SY780_.jpg", fiction: true, leader: "Linda E.", meeting_date: "04/22/2020")

book197 = Book.create!(title: "The Dutch House", author: "Ann Patchett", image_url: "https://m.media-amazon.com/images/I/51YP8NqVZ9L.jpg", fiction: true, leader: "Eleanor", meeting_date: "05/27/2020")

book198 = Book.create!(title: "Washington Black", author: "Esi Edugyan", image_url: "https://m.media-amazon.com/images/I/5113doLqmXL.jpg", fiction: true, leader: "Debbie D.", meeting_date: "07/08/2020")

book199 = Book.create!(title: "Americanah", author: "Chimamanda Ngozi Adichie", image_url: "https://m.media-amazon.com/images/I/51gN4UHWDrL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "09/14/2020")

book200 = Book.create!(title: "Beautiful Ruins", author: "Jess Walter", image_url: "https://m.media-amazon.com/images/I/51kzcyubVNL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "11/02/2020")

book201 = Book.create!(title: "The Book Woman of Troublesome Creek", author: "Kim Richardson", image_url: "https://m.media-amazon.com/images/I/51C-99vYGWL.jpg", fiction: true, leader: "Margaret", meeting_date: "12/07/2020")

book202 = Book.create!(title: "This Tender Land", author: "William Kent", image_url: "https://m.media-amazon.com/images/I/513OSNmyDJL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "01/11/2021")

book203 = Book.create!(title: "There There", author: "Tommy Orange", image_url: "https://m.media-amazon.com/images/I/51emkZtcezL._AC_SY780_.jpg", fiction: true, leader: "Eleanor", meeting_date: "02/24/2021")

book204 = Book.create!(title: "Gateway to the Moon", author: "Mary Morris", image_url: "https://m.media-amazon.com/images/I/61WGH33tJZL._AC_SY780_.jpg", fiction: true, leader: "Linda E.", meeting_date: "04/01/2021")

book205 = Book.create!(title: "The Glass Hotel", author: "Emily St. John Mandel", image_url: "https://m.media-amazon.com/images/I/51XucUUdbBL._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "05/10/2021")

book206 = Book.create!(title: "Hamnet", author: "Maggie O'Farrell", image_url: "https://s.yimg.com/ny/api/res/1.2/uOv1RX0gLn19RAUfD32o6Q--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MA--/https://media.zenfs.com/en/snappa_entertainment_819/d758e20634c02abe9a66c13b0b60f0a0", fiction: true, leader: "Marcie", meeting_date: "07/14/2021")

book207 = Book.create!(title: "Circe", author: "Madeline Miller", image_url: "https://images.booksense.com/images/347/556/9780316556347.jpg", fiction: true, leader: "Sue", meeting_date: "09/29/2021")

book208 = Book.create!(title: "The Last Painting of Sara De Vos", author: "Dominic Smith", image_url: "https://m.media-amazon.com/images/I/517jktfMznL.jpg", fiction: true, leader: "Lisa", meeting_date: "11/03/2021")

book209 = Book.create!(title: "The Personal Librarian", author: "Marie Benedict", image_url: "https://m.media-amazon.com/images/I/91OW4Gt23TS.jpg", fiction: true, leader: "Chris", meeting_date: "01/12/2022")

book210 = Book.create!(title: "The Night Watchman", author: "Louise Erdrich", image_url: "https://m.media-amazon.com/images/I/41Dt6s96fUS._AC_SY780_.jpg", fiction: true, leader: "Eleanor", meeting_date: "03/09/2022")

book211 = Book.create!(title: "Flight of Dreams", author: "Ariel Lawhon", image_url: "https://m.media-amazon.com/images/I/516h7IrOK+L._AC_SY780_.jpg", fiction: true, leader: "Nancy", meeting_date: "04/27/2022")

book212 = Book.create!(title: "The One-in-a-Million Boy", author: "Monica Wood", image_url: "https://m.media-amazon.com/images/I/51Q3z3emk2L._AC_SY780_.jpg", fiction: true, leader: "Lisa", meeting_date: "06/01/2022")

book213 = Book.create!(title: "The Street Sweeper", author: "Elliot Perlman", image_url: "https://m.media-amazon.com/images/I/5182Yyr5BaL._AC_SY780_.jpg", fiction: true, leader: "Sue", meeting_date: "09/14/2022")

book214 = Book.create!(title: "Behind the Beautiful Forevers", author: "Katherine Boo", image_url: "https://m.media-amazon.com/images/I/51yZzJFTeoL._AC_SY780_.jpg", fiction: true, leader: "Eleanor", meeting_date: "11/02/2022")

book215 = Book.create!(title: "A Hell of a Book", author: "https://m.media-amazon.com/images/I/51mZm5Zp66L._AC_SY780_.jpg", image_url: "", fiction: true, leader: "Jason Mott", meeting_date: "02/08/2023")

book216 = Book.create!(title: "The Honey Bus", author: "Meredith May", image_url: "https://m.media-amazon.com/images/I/519vlL6Z5RL._AC_SY780_.jpg", fiction: true, leader: "Debbie", meeting_date: "06/21/2023")




puts "Finished creating books."

puts "Creating join table..."

# # Sue's Favorites:
BookMember.create!(book_id: book6.id, member_id: member1.id)
BookMember.create!(book_id: book8.id, member_id: member1.id)
BookMember.create!(book_id: book9.id, member_id: member1.id)
BookMember.create!(book_id: book11.id, member_id: member1.id)
BookMember.create!(book_id: book15.id, member_id: member1.id)
BookMember.create!(book_id: book17.id, member_id: member1.id)
BookMember.create!(book_id: book22.id, member_id: member1.id)
BookMember.create!(book_id: book23.id, member_id: member1.id)
BookMember.create!(book_id: book24.id, member_id: member1.id)
BookMember.create!(book_id: book25.id, member_id: member1.id)
BookMember.create!(book_id: book31.id, member_id: member1.id)
BookMember.create!(book_id: book38.id, member_id: member1.id)
BookMember.create!(book_id: book39.id, member_id: member1.id)
BookMember.create!(book_id: book40.id, member_id: member1.id)
BookMember.create!(book_id: book43.id, member_id: member1.id)
BookMember.create!(book_id: book44.id, member_id: member1.id)
BookMember.create!(book_id: book51.id, member_id: member1.id)
BookMember.create!(book_id: book67.id, member_id: member1.id)
BookMember.create!(book_id: book75.id, member_id: member1.id)
BookMember.create!(book_id: book78.id, member_id: member1.id)
BookMember.create!(book_id: book80.id, member_id: member1.id)
BookMember.create!(book_id: book81.id, member_id: member1.id)
BookMember.create!(book_id: book86.id, member_id: member1.id)
BookMember.create!(book_id: book97.id, member_id: member1.id)
BookMember.create!(book_id: book103.id, member_id: member1.id)
BookMember.create!(book_id: book105.id, member_id: member1.id)
BookMember.create!(book_id: book107.id, member_id: member1.id)
BookMember.create!(book_id: book110.id, member_id: member1.id)
BookMember.create!(book_id: book124.id, member_id: member1.id)
BookMember.create!(book_id: book126.id, member_id: member1.id)
BookMember.create!(book_id: book131.id, member_id: member1.id)
BookMember.create!(book_id: book136.id, member_id: member1.id)
BookMember.create!(book_id: book145.id, member_id: member1.id)
BookMember.create!(book_id: book147.id, member_id: member1.id)
BookMember.create!(book_id: book151.id, member_id: member1.id)
BookMember.create!(book_id: book152.id, member_id: member1.id)
BookMember.create!(book_id: book156.id, member_id: member1.id)
BookMember.create!(book_id: book160.id, member_id: member1.id)
BookMember.create!(book_id: book172.id, member_id: member1.id)
BookMember.create!(book_id: book174.id, member_id: member1.id)
BookMember.create!(book_id: book184.id, member_id: member1.id)
BookMember.create!(book_id: book188.id, member_id: member1.id)
BookMember.create!(book_id: book189.id, member_id: member1.id)
BookMember.create!(book_id: book200.id, member_id: member1.id)
BookMember.create!(book_id: book206.id, member_id: member1.id)
BookMember.create!(book_id: book210.id, member_id: member1.id)
BookMember.create!(book_id: book213.id, member_id: member1.id)

# # Marcie's Favorites:
BookMember.create!(book_id: book1.id, member_id: member8.id)
BookMember.create!(book_id: book39.id, member_id: member8.id)
BookMember.create!(book_id: book177.id, member_id: member8.id)
BookMember.create!(book_id: book192.id, member_id: member8.id)
BookMember.create!(book_id: book201.id, member_id: member8.id)
BookMember.create!(book_id: book207.id, member_id: member8.id)

# # Nancy's Favorites:
BookMember.create!(book_id: book205.id, member_id: member9.id)
BookMember.create!(book_id: book209.id, member_id: member9.id)
BookMember.create!(book_id: book211.id, member_id: member9.id)
BookMember.create!(book_id: book214.id, member_id: member9.id)

# # Linda's Favorites:
BookMember.create!(book_id: book97.id, member_id: member5.id)
BookMember.create!(book_id: book67.id, member_id: member5.id)
BookMember.create!(book_id: book78.id, member_id: member5.id)
BookMember.create!(book_id: book81.id, member_id: member5.id)
BookMember.create!(book_id: book107.id, member_id: member5.id)
BookMember.create!(book_id: book192.id, member_id: member5.id)
BookMember.create!(book_id: book193.id, member_id: member5.id)

# # Lisa's Favorites
BookMember.create!(book_id: book11.id, member_id: member7.id)
BookMember.create!(book_id: book47.id, member_id: member7.id)
BookMember.create!(book_id: book76.id, member_id: member7.id)
BookMember.create!(book_id: book101.id, member_id: member7.id)
BookMember.create!(book_id: book102.id, member_id: member7.id)
BookMember.create!(book_id: book105.id, member_id: member7.id)
BookMember.create!(book_id: book107.id, member_id: member7.id)
BookMember.create!(book_id: book118.id, member_id: member7.id)
BookMember.create!(book_id: book126.id, member_id: member7.id)
BookMember.create!(book_id: book169.id, member_id: member7.id)
BookMember.create!(book_id: book172.id, member_id: member7.id)
BookMember.create!(book_id: book184.id, member_id: member7.id)
BookMember.create!(book_id: book186.id, member_id: member7.id)
BookMember.create!(book_id: book192.id, member_id: member7.id)
BookMember.create!(book_id: book206.id, member_id: member7.id)
