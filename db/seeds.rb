Ingredient.create(name: 'Ail')
Ingredient.create(name: 'Avocat(s)')
Ingredient.create(name: 'Basilic')
Ingredient.create(name: 'Beurre')
Ingredient.create(name: 'Bière')
Ingredient.create(name: 'Blé')
Ingredient.create(name: 'Boursin')
Ingredient.create(name: 'Butternut(s)')
Ingredient.create(name: 'Carotte(s)')
Ingredient.create(name: 'Chapelure')
Ingredient.create(name: 'Charcuterie')
Ingredient.create(name: 'Chili')
Ingredient.create(name: 'Chocolat')
Ingredient.create(name: 'Chou-fleur(s)')
Ingredient.create(name: 'Citron')
Ingredient.create(name: 'Coriandre')
Ingredient.create(name: 'Cornichon')
Ingredient.create(name: 'Cumin')
Ingredient.create(name: 'Curry')
Ingredient.create(name: "De l'amour")
Ingredient.create(name: 'Eau')
Ingredient.create(name: 'Farine')
Ingredient.create(name: "Fromage à raclette")
Ingredient.create(name: "Fromage de chèvre")
Ingredient.create(name: 'Gingembre')
Ingredient.create(name: "Grenade")
Ingredient.create(name: "Gruyère")
Ingredient.create(name: 'Herbes aromatiques')
Ingredient.create(name: "Huile")
Ingredient.create(name: "Huile de colza")
Ingredient.create(name: "Huile d'olive")
Ingredient.create(name: "Huile de tournesol")
Ingredient.create(name: 'Ketchup')
Ingredient.create(name: 'Lait')
Ingredient.create(name: 'Lait de Coco')
Ingredient.create(name: 'Lait de Soja')
Ingredient.create(name: 'Lentilles')
Ingredient.create(name: 'Lentilles corail')
Ingredient.create(name: 'Levure chimique')
Ingredient.create(name: 'Levure de bière')
Ingredient.create(name: 'Levure fraîche')
Ingredient.create(name: 'Mâche')
Ingredient.create(name: 'Maïs')
Ingredient.create(name: 'Maïzena')
Ingredient.create(name: 'Mayonnaise')
Ingredient.create(name: 'Mozarella')
Ingredient.create(name: "Blanc(s) d'oeufs")
Ingredient.create(name: "Jambon blanc")
Ingredient.create(name: "Jaune(s) d'oeufs")
Ingredient.create(name: 'Oeuf(s)')
Ingredient.create(name: 'Oignon(s) roses de Bretagne')
Ingredient.create(name: 'Pain')
Ingredient.create(name: 'Pain(s) hamburger')
Ingredient.create(name: "Panais")
Ingredient.create(name: 'Paprika')
Ingredient.create(name: 'Pastis')
Ingredient.create(name: 'Patate(s) douce(s)')
Ingredient.create(name: 'Pâte Brisée')
Ingredient.create(name: 'Pesto')
Ingredient.create(name: "Persil")
Ingredient.create(name: 'Petits pois')
Ingredient.create(name: "Piment d'Espelette")
Ingredient.create(name: 'Pois chiches')
Ingredient.create(name: 'Poisson blanc')
Ingredient.create(name: 'Poivre')
Ingredient.create(name: 'Pomme(s) de terre')
Ingredient.create(name: "Potimarron(s)")
Ingredient.create(name: 'Potiron(s)')
Ingredient.create(name: 'Poulet')
Ingredient.create(name: 'Rhum')
Ingredient.create(name: 'Riz')
Ingredient.create(name: 'Roquette')
Ingredient.create(name: 'Salade')
Ingredient.create(name: 'Sel')
Ingredient.create(name: 'Soja')
Ingredient.create(name: 'Sucre')
Ingredient.create(name: 'Thon émietté')
Ingredient.create(name: 'Tranche(s) de fromage')
Ingredient.create(name: 'Tofu')
Ingredient.create(name: 'Tomate(s)')

Category.create(name: 'Végétarien')
Category.create(name: 'Carnivore')
Category.create(name: 'Végan')
Category.create(name: 'Piscivore')
Category.create(name: 'Sucré')
Category.create(name: 'Salé')
Category.create(name: 'Sucré-salé')
Category.create(name: 'Apéritif')
Category.create(name: 'Entrée')
Category.create(name: 'Plat')
Category.create(name: 'Dessert')
Category.create(name: 'Soupe')
Category.create(name: 'Amuse-gueule')
Category.create(name: 'Sans gluten')
Category.create(name: 'Sans lactose')
Category.create(name: 'Avec fromage')
Category.create(name: 'Avec alcool')
Category.create(name: 'Américain')
Category.create(name: 'Anglais')
Category.create(name: 'Chinois')
Category.create(name: 'Espagnol')
Category.create(name: 'Français')
Category.create(name: 'Italien')
Category.create(name: 'Indien')
Category.create(name: 'Japonais')
Category.create(name: 'Scandinave')
Category.create(name: 'Portugais')
Category.create(name: 'Tex-mex')

Recipe.create(title: "Tourteau fromager du Poitou", time: 90, image_url: "https://image.afcdn.com/recipe/20130611/10688_w600.jpg")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Farine").id, quantity: "250 g de")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Beurre").id, quantity: "150 g de")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Jaune(s) d'oeufs").id, quantity: "1")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Fromage de chèvre").id, quantity: "250 g de")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Oeuf(s)").id, quantity: "5")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Sucre").id, quantity: "150 g de")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Lait").id, quantity: " ")
Recingredient.create(recipe_id: 1, ingredient_id: Ingredient.find_by(name: "Sel").id, quantity: " ")
Step.create(recipe_id: 1, description: "Préparer d'abord une pâte brisée avec la farine, 125 g de beurre, le jaune d'œuf, 1 pincée de sel et 1 ou 2 cuillerées à soupe d'eau. ramasser la pâte en boule et l'envelopper dans un film alimentaire pour la laisser reposer pendant 1 heure au moins. Pendant ce temps, laisser le fromage de chèvre frais s'égoutter soigneusement.")
Step.create(recipe_id: 1, description: "Mettre le fromage de chèvre dans une terrine. Casser les œufs et séparer les blancs des jaunes. Battre le fromage blanc avec 125 g de sucre en poudre et 1 ou 2 cuillerées à soupe de lait jusqu'à consistance homogène et onctueuse. Incorporer ensuite les jeunes d'œufs et la fécule en mélangeant intimement.")
Step.create(recipe_id: 1, description: "Par ailleurs, battre les blancs d'œufs en neige très ferme avec le reste du sucre en poudre. Les incorporer ensuite délicatement à la préparation précédente. On peut parfumer le tout avec un trait d'essence de vanille, un peu de cognac ou d'eau de fleur d'oranger. Beurrer le moule avec le reste du beurre, soit un moule spécial à tourteau, à fond arrondi, soit un moule à manqué rond.")
Step.create(recipe_id: 1, description: "Abaisser la pâte brisée et en garnir le moule. Verser la préparation au fromage frais dessus et lisser la surface de la pâte avec une spatule, très délicatement. Faire cuire dans le four à 180°C pendant 50 minutes environ, jusqu'à ce que le dessus se soulève en forme de dôme et brunisse de manière homogène.")
Step.create(recipe_id: 1, description: "Sortir le tourteau du four, le laisser refroidir et le démouler.")
Categorecipe.create(recipe_id: 1, category_id: Category.find_by(name: "Dessert").id)
Categorecipe.create(recipe_id: 1, category_id: Category.find_by(name: "Sucré-salé").id)

Recipe.create(title: "Raclette", time: 40, image_url: "https://levavispatulas.files.wordpress.com/2011/12/20111210_3233.jpg")
Recingredient.create(recipe_id: 2, ingredient_id: Ingredient.find_by(name: "Fromage à raclette").id, quantity: "800 g de")
Recingredient.create(recipe_id: 2, ingredient_id: Ingredient.find_by(name: "Pomme(s) de terre").id, quantity: "1 kg de")
Recingredient.create(recipe_id: 2, ingredient_id: Ingredient.find_by(name: "Cornichon").id, quantity: " ")
Recingredient.create(recipe_id: 2, ingredient_id: Ingredient.find_by(name: "Charcuterie").id, quantity: " ")
Step.create(recipe_id: 2, description: "Laver les pommes de terre, et les faire cuire en robe des champs avec du sel.")
Step.create(recipe_id: 2, description: "Pendant que les pommes de terre cuisent, préparer le plat de fromage en coupant des tranches de la grandeur des poêlons.")
Step.create(recipe_id: 2, description: "Chacun fait fondre son fromage dans le poêlon et le déguste ensuite avec une pomme de terre et les accompagnements de son choix.")
Categorecipe.create(recipe_id: 2, category_id: Category.find_by(name: "Français").id)
Categorecipe.create(recipe_id: 2, category_id: Category.find_by(name: "Avec fromage").id)

Recipe.create(title: "Poulet au pastis", time: 15, image_url: "https://static.750g.com/images/622-auto/c79d102c86fdca5831abbf2c0fde9ac1/poulet-au-pastis.jpeg")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Sel").id, quantity: " ")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Poivre").id, quantity: " ")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Herbes aromatiques").id, quantity: " ")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Huile").id, quantity: " ")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Pomme(s) de terre").id, quantity: "750 g de")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Ail").id, quantity: "4 gousses d'")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Pastis").id, quantity: "4 cuillères à soupe de")
Recingredient.create(recipe_id: 3, ingredient_id: Ingredient.find_by(name: "Poulet").id, quantity: "1")
Step.create(recipe_id: 3, description: "Préchauffer le four th 7/8. Peler les pommes de terre et les laver")
Step.create(recipe_id: 3, description: "Mettre dans un plat en fonte les morceaux de poulet badigeonnés d'huile, les pommes de terre autour.")
Step.create(recipe_id: 3, description: "Mouiller avec les 4 cuillères à soupe de pastis et 1 verre d'eau.")
Step.create(recipe_id: 3, description: "Ajouter les gousses d'ail, le thym et le romarin, poivrer, saler.")
Step.create(recipe_id: 3, description: "Laisser cuire au four 55 minutes. Couvrir éventuellement à mi-cuisson.")
Categorecipe.create(recipe_id: 3, category_id: Category.find_by(name: "Avec alcool").id)
Categorecipe.create(recipe_id: 3, category_id: Category.find_by(name: "Carnivore").id)

Recipe.create(title: "Jambon au boursin anti gueule de bois", time: 5, image_url: "https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2Fab25f7dd-3ffc-4911-9d44-5bf41c494c2c.2Ejpeg/748x372/quality/80/crop-from/center/jambon-au-boursin.jpeg")
Recingredient.create(recipe_id: 4, ingredient_id: Ingredient.find_by(name: "Jambon blanc").id, quantity: "4 tranches de")
Recingredient.create(recipe_id: 4, ingredient_id: Ingredient.find_by(name: "Boursin").id, quantity: "1 boîte de")
Step.create(recipe_id: 4, description: "Etalez les tranches de jambon, et tartinez les avec du Boursin.")
Step.create(recipe_id: 4, description: "Roulez les tranches en makis et coupez-les à l’aide d’un couteau tranchant.")
Categorecipe.create(recipe_id: 4, category_id: Category.find_by(name: "Amuse-gueule").id)
Categorecipe.create(recipe_id: 4, category_id: Category.find_by(name: "Carnivore").id)

Recipe.create(title: "Soupe aux lentilles corail", time: 5, image_url: "https://vegan-pratique.fr/wp-content/uploads/2018/04/soupe-lentilles-corail3-1024x683.jpg")
Recingredient.create(recipe_id: 5, ingredient_id: Ingredient.find_by(name: "Oignon(s) roses de Bretagne").id, quantity: "225 g d'")
Recingredient.create(recipe_id: 5, ingredient_id: Ingredient.find_by(name: "Eau").id, quantity: "1L d'")
Recingredient.create(recipe_id: 5, ingredient_id: Ingredient.find_by(name: "Huile").id, quantity: "1 cuillère à soupe")
Recingredient.create(recipe_id: 5, ingredient_id: Ingredient.find_by(name: "Carotte(s)").id, quantity: "1")
Recingredient.create(recipe_id: 5, ingredient_id: Ingredient.find_by(name: "Lentilles corail").id, quantity: "225 g de")
Step.create(recipe_id: 5, description: "Dans une casserole, faire cuire les oignons avec les carottes dans l’huile jusqu’à ce qu’ils soient tendres.")
Step.create(recipe_id: 5, description: "Rincer les lentilles (pas besoin de trempage).")
Step.create(recipe_id: 5, description: "Ajouter l’eau et les lentilles, cuire jusqu’à ce que les lentilles soient tendres (environ 20 minutes).")
Step.create(recipe_id: 5, description: "Mixer (optionnel).")
Categorecipe.create(recipe_id: 5, category_id: Category.find_by(name: "Végan").id)
Categorecipe.create(recipe_id: 5, category_id: Category.find_by(name: "Soupe").id)

Recipe.create(title: "Chou-fleur et pois chiches épicés, rôtis et grenade", time: 30, image_url: "https://menu-vegetarien.com/wp-content/uploads/2018/11/recette-vegetarienne-chou-fleur-pois-chiches-epices-rotis-grenade.jpg")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Chou-fleur(s)").id, quantity: "Les fleurettes d'1")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Pois chiches").id, quantity: "400 g")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Ail").id, quantity: "1 càc et demi de poudre d'")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Cumin").id, quantity: "1 càc de")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Paprika").id, quantity: "1 càc")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Chili").id, quantity: "1 càc")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Huile d'olive").id, quantity: "1 càs d'")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Citron").id, quantity: "1 càs de jus de")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Grenade").id, quantity: "Les graines d'1")
Recingredient.create(recipe_id: 6, ingredient_id: Ingredient.find_by(name: "Persil").id, quantity: " ")
Step.create(recipe_id: 6, description: "Préchauffer le four à 200°C. Mettre les fleurettes de chou-fleur et les pois chiches dans un saladier. Ajouter les épices, l’huile d’olive et le jus de citron frais, bien mélanger jusqu’à ce que le chou-fleur et les pois chiches soient bien enrobés.")
Step.create(recipe_id: 6, description: "Les déposer sur la plaque du four recouverte de papier cuisson et cuire pendant 45 minutes ou jusqu’à ce que le chou-fleur et les pois chiches soient légèrement croquants.")
Step.create(recipe_id: 6, description: "Servir avec les graines de grenade et le persil frais.")
Categorecipe.create(recipe_id: 6, category_id: Category.find_by(name: "Végétarien").id)
Categorecipe.create(recipe_id: 6, category_id: Category.find_by(name: "Plat").id)


Recipe.create(title: "Hamburger Végétarien", time: 30, image_url: "https://image.afcdn.com/recipe/20160127/44502_w600.jpg")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Salade").id, quantity: "4 feuilles de")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Tomate(s)").id, quantity: "1")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Tranche(s) de fromage").id, quantity: "4")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Mayonnaise").id, quantity: " ")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Ketchup").id, quantity: " ")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Pain(s) hamburger").id, quantity: "4")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Petits pois").id, quantity: "200 g de")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Maïs").id, quantity: "200 g de")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Oignon(s) roses de Bretagne").id, quantity: "1")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Oeuf(s)").id, quantity: "1")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Farine").id, quantity: "2 cuillères à soupe de")
Recingredient.create(recipe_id: 7, ingredient_id: Ingredient.find_by(name: "Chapelure").id, quantity: " ")
Step.create(recipe_id: 7, description: "Passez au mixeur les petits pois, le maïs, l’oignon (coupé en 4) et l’oeuf.")
Step.create(recipe_id: 7, description: "Puis ajoutez au mélange les épices, la farine et de la chapelure jusqu'à l’obtention d’une pâte épaisse (pour pouvoir former des galettes).")
Step.create(recipe_id: 7, description: "Formez des galettes dans une poêle chaude avec un peu d’huile. Laissez cuire environ 15 mn à feux moyen. Avant de les retirer du feux, déposez les tranches de fromage pour qu’elles fondent un peu.")
Step.create(recipe_id: 7, description: "Vous pouvez ensuite composer vos hamburgers avec le pain la salades, les tranches de tomates, les sauces et la galette.")
Categorecipe.create(recipe_id: 7, category_id: Category.find_by(name: "Végétarien").id)
Categorecipe.create(recipe_id: 7, category_id: Category.find_by(name: "Plat").id)

Recipe.create(title: "Kouign-amann", time: 240, image_url: "https://les11gourmandes.files.wordpress.com/2015/03/gc3a2teau_kouign-amann.jpg")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Farine").id, quantity: "250 g de")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Beurre").id, quantity: "250 g de")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Sucre").id, quantity: "200 g de")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Levure fraîche").id, quantity: "10 g de")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Eau").id, quantity: "10 cL d'")
Recingredient.create(recipe_id: 8, ingredient_id: Ingredient.find_by(name: "Sel").id, quantity: "2 pincées de")
Step.create(recipe_id: 8, description: "Commencez par réaliser la pâte du kouign-amann : mélangez la levure fraîche et 3 càs d’eau tiède dans une tasse, puis, dans un saladier, mélangez la farine de blé et ajoutez 2 pincées de sel (attention, le sel et la levure boulangère ne doivent pas être en contact, ceci risquerait de tuer la levure et empêcher votre pâte de gonfler).")
Step.create(recipe_id: 8, description: "Formez un puits et versez-y votre mélange de levure et 10 cl d’eau.")
Step.create(recipe_id: 8, description: "Farinez votre plan de travail et travaillez votre pâte à kouign-amann jusqu’à l’obtention d’une pâte souple.")
Step.create(recipe_id: 8, description: "Laissez la pâte reposer en boule dans le saladier à température ambiante pendant 3 h")
Step.create(recipe_id: 8, description: "La pâte a triplé de volume : sur votre plan de travail fariné, à l'aide d'un rouleau à pâtisserie, abaissez-la pâte (cette étape peut-être assez longue car la pâte est relativement élastique) et donnez lui une forme carrée d'environ 1 cm de hauteur : étalez le beurre demi-sel bien mou au pinceau et saupoudrez de sucre en poudre. Prenez soin de ne pas étaler le beurre et le sucre sur les rebords de la pâte et de laisser un espace de 3 cm environ tout autour.")
Step.create(recipe_id: 8, description: "Repliez la pâte en 3 dans la longueur puis de nouveau en 3 dans la largeur, à la manière d'une pâte feuilletée, le but étant de bien «emprisonner» le beurre et le sucre.")
Step.create(recipe_id: 8, description: "Avec votre rouleau à pâtisserie, étalez de nouveau la pâte très délicatement en faisant attention à ce que le beurre ne ressorte pas.")
Step.create(recipe_id: 8, description: "Repliez la pâte encore une fois en 3 dans la longueur puis dans la largeur ")
Step.create(recipe_id: 8, description: "Tassez votre pâton dans un moule beurré et laissez le reposer pendant une demie-heure.")
Step.create(recipe_id: 8, description: "Avec un couteau, tracez un quadrillage sur la pâte et parsemez quelques morceaux de beurre supplémentaires. Préchauffez le four thermostat 7 (210°). Puis, faites cuire le kouign-amann pendant 35 mn environ.")
Step.create(recipe_id: 8, description: "Une fois votre kouign-amann cuit, sortez-le du four et patientez un quart d’heure avant de procéder au démoulage.")
Step.create(recipe_id: 8, description: "Sapoudrez votre kouign-amann avec un peu de sucre en poudre et dégustez-le encore tiède !")
Categorecipe.create(recipe_id: 8, category_id: Category.find_by(name: "Dessert").id)
Categorecipe.create(recipe_id: 8, category_id: Category.find_by(name: "Sucré-salé").id)
