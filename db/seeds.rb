# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_1 = Product.create(price:2099, description:"The Timber will inspire you to explore — even if your journey only goes as far as the pantry. With its oak wood trim, feathery cushions, and full-aniline dye process, the Timber is sinkable and plush but cleans up real nice. Natural color variations, wrinkles, and creases are part of the unique characteristics of this leather. It will develop a relaxed vintage look with regular use.", material:"Leather", cat:"sofa", name:"Timber Charme Tan Sofa")

pictures_p1 = Picture.create([{url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image58175.jpg", product_id:1},  {url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image58176.jpg",product_id:1},{url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image58177.jpg",product_id:1}, {url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image58178.jpg",product_id:1}, {url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image58184.jpg",product_id:1}, {url:"https://cdn-images.article.com/products/SKU2128/2890x1500/image66570.jpg", product_id:1},])

features_p1 = Feature.create([{feat:"Sturdy corner blocked wooden frame", product_id:1}, {feat:"High density foam with polyester and down filling", product_id:1}, {feat:"Upholstered in full-aniline Italian-tanned leather",product_id:1}, {feat:"Loose seat and back cushions", product_id:1}, {feat:"Pirelli webbing",product_id:1}, {feat:"Simple assembly required (approximately 5 minutes)", product_id:1}])

specifics_p1 = Specific.create(style:"Mid-century modern", height:32, width:90, depth:35, materials:"
Kiln dried solid wood, high density foam, polyester, duck feathers, full-aniline leather", color:"Charme Tan", product_id:1)

# -------------------------------------------------
product_2 = Product.create(price:169, description:"Little lamb? Close, but not sentient. The Cilo in Ivory Bouclé is a sweet small ottoman that is tougher than it looks. Wooden internal structure gives this piece structure and weight; pads make it comfy to perch on; that nubby texture makes it inarguably cute.", material:"Fabric", cat:"sofa", name:"Cilo Ivory Bouclé Ottoman")

pictures_p2 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image51234.jpg?fit=max&w=2740&q=60&fm=webp", product_id:2}, {url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image51236.jpg?fit=max&w=2740&q=60&fm=webp",product_id:2},{url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image51237.jpg?fit=max&w=2740&q=60&fm=webp",product_id:2}, {url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image51235.jpg?fit=max&w=2740&q=60&fm=webp",product_id:2}, {url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image54528.jpg?fit=max&w=2740&q=60&fm=webp",product_id:2}, {url:"https://cdn-images.article.com/products/SKU13492/2890x1500/image66265.jpg?fit=max&w=2740&q=60&fm=webp", product_id:2}])


specifics_p2 = Specific.create(style:"
Scandinavian", height:17.5, width:17, materials:"
Kiln dried Larch, plywood, foam, polyester, Fabric - 81% Polyester, 19% Acrylic, Martindale test - 50,000 rubs", color:"
Ivory Boucle", product_id:2)

features_p2 = Feature.create([{feat:"Sturdy solid wood frame construction", product_id:2}, {feat:"Rubber webbing suspension.", product_id:2}, {feat:"High density foam with polyester fiber filling.",product_id:2}, {feat:"No assembly required.", product_id:2}, {feat:"Pirelli webbing",product_id:2}])

# -------------------------------------------------
product_3 = Product.create(price:1499, description:"A honey oak wooden trim and voluptuous linen cushions define this sofa with an updated mid-century modern style. Sink into the feather filled cushions and relax — you've come home to your new favorite place.", material:"Fabric", cat:"sofa", name:"Timber Olio Green Sofa")

pictures_p3 = Picture.create([{url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58197.jpg?fit=max&w=2740&q=60&fm=webp", product_id:3}, {url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58199.jpg?fit=max&w=2740&q=60&fm=webp",product_id:3},{url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58200.jpg?fit=max&w=2740&q=60&fm=webp",product_id:3}, {url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58201.jpg?fit=max&w=2740&q=60&fm=webp",product_id:3}, {url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58202.jpg?fit=max&w=2740&q=60&fm=webp",product_id:3}, {url:"https://cdn-images.article.com/products/SKU12684/2890x1500/image58198.jpg?fit=max&w=2740&q=60&fm=webp", product_id:3}, ])

specifics_p3 = Specific.create(style:"
Mid-century modern", height:32, width:90, depth:35,materials:"
Kiln dried solid wood frame, rubberwood legs, high density foam, Fabric - 90% Polyester 10% Linen, Martindale rating: 40,000 rubs, duck feathers", color:"
Olio Green", product_id:3)


features_p3 = Feature.create([{feat:"Sturdy corner blocked wooden frame", product_id:3}, {feat:"High density foam with polyester and down filling
", product_id:3}, {feat:"Loose seat and back cushions
",product_id:3}, {feat:"Pirelli webbing", product_id:3}, {feat:"Simple assembly required (approximately 5 minutes)",product_id:3}])

# -------------------------------------------------
product_4 = Product.create(price:749, description:"Give them something to talk about. The Lupra chaise lounge commands the attention of all who are lucky enough to lay eyes upon it. Is it the Vienna Blue velvet? The upscale Scandinavian style? The curved bodice? The Lupra would never make you choose. In front of the fire or in your grand foyer, this chaise is one suave superstar.", material:"Fabric", cat:"sofa", name:"Lupra Vienna Blue Daybed")

pictures_p4 = Picture.create([{url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image53749.jpg?fit=max&w=2740&q=60&fm=webp", product_id:4}, {url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image53751.jpg?fit=max&w=2740&q=60&fm=webp",product_id:4},{url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image53752.jpg?fit=max&w=2740&q=60&fm=webp",product_id:4}, {url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image53753.jpg?fit=max&w=2740&q=60&fm=webp",product_id:4}, {url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image53754.jpg?fit=max&w=2740&q=60&fm=webp",product_id:4}, {url:"https://cdn-images.article.com/products/SKU14223/2890x1500/image59735.jpg?fit=max&w=2740&q=60&fm=webp", product_id:4}, ])

specifics_p4 = Specific.create(style:"
Scandinavian", height:27.5, width:72, depth:35.5,materials:"

Kiln dried Pine wood frame, foam, rubber webbing, Fabric- 100% Polyester, Martindale test - 50,000 rubs", color:"
Olio Green", product_id:4)


features_p4 = Feature.create([{feat:"Polyester velvet upholstery", product_id:4}, {feat:"Fixed seat and back cushions", product_id:4}, {feat:"Seat and back cushions are filled with foam",product_id:4}, {feat:"Some assembly required (approximately 15 minutes)", product_id:4}])

# -------------------------------------------------
product_5 = Product.create(price:1999, description:"Like your cool uncle who cuts all of the sleeves off his t-shirts, but with clean Industrial design, a modern edge, the comfiest of cushions, and the fact that it’s an armless loveseat and not a 45 year-old man from Mississauga. Okay, so maybe this comparison is fraught, but you can listen to as much Def Leppard while sitting on it as you like. Cool uncle approved.", material:"Leather", cat:"sofa", name:"Cigar Rawhide Tan Loveseat")

pictures_p5 = Picture.create([{url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58113.jpg?fit=max&w=2740&q=60&fm=webp", product_id:5}, {url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58114.jpg?fit=max&w=2740&q=60&fm=webp",product_id:5},{url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58115.jpg?fit=max&w=2740&q=60&fm=webp",product_id:5}, {url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58116.jpg?fit=max&w=2740&q=60&fm=webp",product_id:5}, {url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58117.jpg?fit=max&w=2740&q=60&fm=webp",product_id:5}, {url:"https://cdn-images.article.com/products/SKU14562/2890x1500/image58118.jpg?fit=max&w=2740&q=60&fm=webp", product_id:5}, ])

specifics_p5 = Specific.create(style:"
Scandinavian", height:26, width:56, depth:38,materials:"


Kiln dried solid wood, high density foam, polyester fiber, duck feathers, full aniline leather", color:"
Rawhide Tan", product_id:5)


features_p5 = Feature.create([{feat:"Sturdy corner blocked wooden frame", product_id:5}, {feat:"High density foam with polyester filling", product_id:5}, {feat:"Upholstered in Italian-tanned pull-up leather",product_id:5}, {feat:"Tight seat and back", product_id:5}, {feat:"No assembly required", product_id:5}])



# -------------------------------------------------
product_6 = Product.create(price:549, description:"Sit like a Bond villain whose only real diabolical concern is comfort. The Turoy can swivel dramatically, or just regularly, it really depends on your mood—and the chair's extra-soft textured Ivory bouclé fabric will leave you in a good one whenever you decide to lounge in it.", material:"Fabric", cat:"chair", name:"	Turoy Ivory Bouclé Chair")

pictures_p6 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image54663.jpg?fit=max&w=2740&q=60&fm=webp", product_id:6}, {url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image54665.jpg?fit=max&w=2740&q=60&fm=webp",product_id:6},{url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image54666.jpg?fit=max&w=2740&q=60&fm=webp",product_id:6}, {url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image54667.jpg?fit=max&w=2740&q=60&fm=webp",product_id:6}, {url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image54668.jpg?fit=max&w=2740&q=60&fm=webp",product_id:6}, {url:"https://cdn-images.article.com/products/SKU13941/2890x1500/image59740.jpg?fit=max&w=2740&q=60&fm=webp", product_id:6} ])

specifics_p6 = Specific.create(style:"
Scandinavian", height:31, width:32.5, depth:32,materials:"

Kiln dried pine wood frame. Matte black steel base. Foam and polyester filling. Fabric - 81% Polyester, 19% Acrylic, Martindale test - 50,000 rubs", color:"
vory Boucle", product_id:6)


features_p6 = Feature.create([{feat:"Sturdy, corner blocked solid wood frame", product_id:6}, {feat:"Discreet 360° steel swivel base", product_id:6}, {feat:"Rubber webbing suspension",product_id:6}, {feat:"No assembly required", product_id:6}])

#---------------------------------------
product_7 = Product.create(price:169, description:"Soft and small. The Cilo ottoman is more of an “otto-boy.” Smaller than your typical ottoman, the Cilo has a wooden interior framework that helps the otto-boy keep its strong, sleek shape. Use it as a footrest (otto-boy is padded!) or a place to balance your plate while watching reruns of your favorite 90s sitcom. The gray poly-blend fabric is an unobtrusive addition to your space, and cleans easily.", material:"Fabric", cat:"sofa", name:"Cilo Mist Gray Ottoman")

pictures_p7 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image51229.jpg?fit=max&w=2740&q=60&fm=webp", product_id:7}, {url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image51231.jpg?fit=max&w=2740&q=60&fm=webp",product_id:7},{url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image51232.jpg?fit=max&w=2740&q=60&fm=webp",product_id:7}, {url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image51242.jpg?fit=max&w=2740&q=60&fm=webp",product_id:7}, {url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image54527.jpg?fit=max&w=2740&q=60&fm=webp",product_id:7}, {url:"https://cdn-images.article.com/products/SKU13491/2890x1500/image61943.jpg?fit=max&w=2740&q=60&fm=webp", product_id:7} ])

specifics_p7 = Specific.create(style:"
Scandinavian", height:17.5, width:16, depth:17,materials:"


Kiln dried Larch, plywood, foam, polyester, Fabric - 57% Viscose, 18% Polyester, 15% Cotton, 10% Linen, Martindale test - 50,000 rubs", color:"
Mist Gray", product_id:7)


features_p7 = Feature.create([{feat:"Sturdy solid wood frame construction", product_id:7}, {feat:"Rubber webbing suspension.", product_id:7}, {feat:"High density foam with polyester fiber filling.",product_id:7}, {feat:"No assembly required", product_id:7}])


#---------------------------------------
product_8 = Product.create(price:199, description:"Hold my drink. The Narro side table features a black powder-coated metal body situated on a scene-stealing solid Carrara marble base. Just like your favorite attentive but not annoying waiter, the Narro is there to help when you need a hand without ever getting in the way. Snacks, plants, lamps, oh my. The Narro is a gracious host to all.",  cat:"table", name:"	Narro Black Side Table")

pictures_p8 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image50662.jpg?fit=max&w=2740&q=60&fm=webp", product_id:8}, {url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image50667.jpg?fit=max&w=2740&q=60&fm=webp",product_id:8},{url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image50663.jpg?fit=max&w=2740&q=60&fm=webp",product_id:8}, {url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image50666.jpg?fit=max&w=2740&q=60&fm=webp",product_id:8}, {url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image50664.jpg?fit=max&w=2740&q=60&fm=webp",product_id:8}, {url:"https://cdn-images.article.com/products/SKU13621/2890x1500/image66461.jpg?fit=max&w=2740&q=60&fm=webp", product_id:8} ])

specifics_p8 = Specific.create(style:"
Scandinavian", height:14, width:10, depth:10,materials:"



Carrara marble, steel", color:"
Black", product_id:8)


features_p8 = Feature.create([{feat:"Italian Carrara marble", product_id:8}, {feat:"Marble is a natural stone material and will vary in color tone, vein markings and surface texture.", product_id:8}, {feat:"Powder coated black table top.",product_id:8}, {feat:"Some assembly required (approximately 15 minutes)", product_id:8}])


#---------------------------------------
product_9 = Product.create(price:2599, description:"The ultimate chill zone, but for adults. The Timber pebble gray corner sectional hosts the lounging Olympics with feather-soft cushions and a sturdy corner-blocked wooden frame. The Timber’s soothing combination of gray fabric and oak trim makes this the perfect place to do… nothing at all. Meditate, listen to a podcast, or get cozy with a cuppa before heading into a new week.",material:"Fabric" , cat:"sofa", name:"Timber Pebble Gray Corner Sectional")

pictures_p9 = Picture.create([{url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image70472.jpg?fit=max&w=2740&q=60&fm=webp", product_id:9}, {url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image70339.jpg?fit=max&w=2740&q=60&fm=webp",product_id:9},{url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image70340.jpg?fit=max&w=2740&q=60&fm=webp",product_id:9}, {url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image70341.jpg?fit=max&w=2740&q=60&fm=webp",product_id:9}, {url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image70342.jpg?fit=max&w=2740&q=60&fm=webp",product_id:9}, {url:"https://cdn-images.article.com/products/SKU497A/2890x1500/image65503.jpg?fit=max&w=2740&q=60&fm=webp", product_id:9} ])

specifics_p9 = Specific.create(style:"
Mid-century modern", height:32, width:93, depth:35,materials:"Kiln dried solid wood frame, rubberwood legs, high density foam, Fabric - 90% Polyester 10% Linen, Martindale rating: 40,000 rubs, duck feathers", color:"
Honey Oak", product_id:9)


features_p9 = Feature.create([{feat:"Sturdy corner blocked wooden frame", product_id:9}, {feat:"High density foam with polyester and down filling", product_id:9}, {feat:"Upholstered in a Pebble Gray fabric",product_id:9}, {feat:"Loose seat and back cushions", product_id:9},{feat:"Pirelli webbing", product_id:9}, {feat:"Simple assembly required (approximately 5 minutes)", product_id:9}])



#---------------------------------------
product_10 = Product.create(price:799, description:"Not everyone goes home to a personal foot massage, but here's a good alternative: the Timpani Ottoman says “hey girl, put your feet up.” The tufted leather topper makes it a nice footrest… and a great coffee table. Natural color variations, wrinkles and creases are unique characteristics of aniline leather.", material:"Leather", cat:"sofa", name:"	Timpani Charme Tan Ottoman")

pictures_p10 = Picture.create([{url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58158.jpg?fit=max&w=2740&q=60&fm=webp", product_id:10}, {url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58160.jpg?fit=max&w=2740&q=60&fm=webp",product_id:10},{url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58161.jpg?fit=max&w=2740&q=60&fm=webp",product_id:10}, {url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58162.jpg?fit=max&w=2740&q=60&fm=webp",product_id:10}, {url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58164.jpg?fit=max&w=2740&q=60&fm=webp",product_id:10}, {url:"https://cdn-images.article.com/products/SKU376/2890x1500/image58159.jpg?fit=max&w=2740&q=60&fm=webp", product_id:10} ])

specifics_p10 = Specific.create(style:"
Industrial", height:18, width:42, depth:42,materials:"
High density foam, full-aniline leather", color:"
Charme Tan", product_id:10)


features_p10 = Feature.create([{feat:"High density foam with polyester filling
", product_id:10}, {feat:"Upholstered in full-aniline Italian-tanned leather
", product_id:10}, {feat:"Assembly not required
",product_id:10}])



#---------------------------------------
product_11 = Product.create(price:349, description:"Story time chic. The Meno leather lounger is an updated Japan-like take on the classic lounge shape. Upholstered in a sleek black leather, the Meno lounger sits atop a steel frame. Style it with a Lanna sheepskin throw for a cozy reading nook, or let it speak for itself: stark, serious, but a little mischievous too.", material:"Leather",cat:"chair", name:"Meno Black Leather Lounge Chair")

pictures_p11 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image49102.jpg?fit=max&w=2740&q=60&fm=webp", product_id:11}, {url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image49100.jpg?fit=max&w=2740&q=60&fm=webp",product_id:11},{url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image49103.jpg?fit=max&w=2740&q=60&fm=webp",product_id:11}, {url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image49104.jpg?fit=max&w=2740&q=60&fm=webp",product_id:11}, {url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image49197.jpg",product_id:11}, {url:"https://cdn-images.article.com/products/SKU13276/2890x1500/image54597.jpg?fit=max&w=400&q=40", product_id:11} ])

specifics_p11 = Specific.create(style:"

Mid-century modern", height:28.5, width:24, depth:32,materials:"

Steel frame, Semi-aniline Leather", color:"

Black Leather", product_id:11)


features_p11 = Feature.create([ {feat:"Semi-aniline black leather, with matte black steel frame
", product_id:11}, {feat:"Assembly not required
",product_id:11}])



#---------------------------------------
product_12 = Product.create(price:299, description:"*Whispers* Who are they? The Scindo nesting tables possess that understated cool that says “Yes I’m beautiful. No, I didn’t have to try.” With a Carrara marble top and black powder-coated metal base, the Scindo tables take a basic design concept and elevate it to top shelf status. They can spread out when you need extra spots to display bouquets from your fans, and tuck back together when those flowers have seen better days. Who wore it best? I think you know the answer.", material:"Marble",cat:"table", name:"Scindo Black Nesting Table")

pictures_p12 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50594.jpg?fit=max&w=2740&q=60&fm=webp", product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50595.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12},{url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50596.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50597.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50601.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image65030.jpg?fit=max&w=2740&q=60&fm=webp", product_id:12} ])

specifics_p12 = Specific.create(style:"

Industrial", height:17, width:17, depth:18,materials:"


Carrera marble, steel", color:"

Black", product_id:12)


features_p12 = Feature.create([
   {feat:"15mm solid white marble", product_id:12},
   {feat:"Italian Carrera marble", product_id:12} ,
   {feat:"Marble is a natural stone material and will vary in color tone, vein markings and surface texture", product_id:12},
   {feat:"Powder coated metal legs", product_id:12},
   {feat:"Assembly not required",product_id:12}])



product_12 = Product.create(price:299, description:"*Whispers* Who are they? The Scindo nesting tables possess that understated cool that says “Yes I’m beautiful. No, I didn’t have to try.” With a Carrara marble top and black powder-coated metal base, the Scindo tables take a basic design concept and elevate it to top shelf status. They can spread out when you need extra spots to display bouquets from your fans, and tuck back together when those flowers have seen better days. Who wore it best? I think you know the answer.", material:"Marble",cat:"table", name:"Scindo Black Nesting Table")

pictures_p12 = Picture.create([{url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50594.jpg?fit=max&w=2740&q=60&fm=webp", product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50595.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12},{url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50596.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50597.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image50601.jpg?fit=max&w=2740&q=60&fm=webp",product_id:12}, {url:"https://cdn-images.article.com/products/SKU13619/2890x1500/image65030.jpg?fit=max&w=2740&q=60&fm=webp", product_id:12} ])

specifics_p12 = Specific.create(style:"

Industrial", height:17, width:17, depth:18,materials:"


Carrera marble, steel", color:"

Black", product_id:12)


features_p12 = Feature.create([
  {feat:"15mm solid white marble", product_id:12},
  {feat:"Italian Carrera marble", product_id:12} ,
  {feat:"Marble is a natural stone material and will vary in color tone, vein markings and surface texture", product_id:12},
  {feat:"Powder coated metal legs", product_id:12},
  {feat:"Assembly not required",product_id:12}])



