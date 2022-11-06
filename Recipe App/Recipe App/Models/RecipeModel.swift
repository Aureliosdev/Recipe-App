//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 31.10.2022.
//

import Foundation
import SwiftUI

enum Category: String,CaseIterable, Identifiable {
    
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup  = " Soup"
    case salad = "Salad"
    case burger = "Burger"
    case appetizier = "Apetizier"
    case main = "Main"
    case side = "Side"
    case desert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
    
    
}

struct RecipeModel: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension RecipeModel {
    static let all: [RecipeModel] = [
        
        RecipeModel(name: "Cheddar-Stuffed Burger",
                    image: "https://www.foodandwine.com/thmb/k240esJ7WoZ8HXSrKgfGZz9a-Sw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/201302-xl-cheddar-stuffed-burgers-with-pickled-slaw-and-fried-shallots-befe64201a7e404d86c03289d8b392ef.jpg",
                    description: "Kyle Bailey makes these cheese-stuffed “Juicy Lucy” burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns",
                    ingredients: "Kosher salt,8 cups finely shredded green cabbage (from a 1 1/2-pound head),1 cup distilled white vinegar, 1 tablespoon sugar, 2 tablespoons yellow mustard seeds,Vegetable oil, for frying, 5 large shallots, very thinly sliced crosswise and separated into rings,1/4 cup Wondra flour (see Note),1 1/2 pounds ground beef chuck, preferably 85 percent lean, Freshly ground pepper,4 brioche buns, split and toasted,6 ounces extra-sharp cheddar, shredded",
                    directions: "In a large bowl, toss 1 tablespoon of kosher salt with the cabbage and massage it until it softens and releases its liquid, about 4 minutes. Drain the cabbage in a colander and rinse it. Wipe out the bowl. Add the vinegar, sugar, mustard seeds, 1 cup of water and 1 tablespoon of salt. Add the cabbage to the vinegar mixture, toss to coat and place a plate on top to keep it submerged. Let stand at room temperature for 2 hours.",
                    category: "Burger",
                    datePublished: "2020-10-26",
                    url: "https://www.foodandwine.com/recipes/cheddar-stuffed-burgers-pickled-slaw-and-fried-shallots"),
    
       RecipeModel(name: "Bacon-and-Kimchi Burgers",
                   image: "https://www.foodandwine.com/thmb/J_4Jg9Z7e_NsyfpbOAdvCCZtq0c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/recipe0615-xl-bacon-and-kimchi-burgers-2000-a72b05469720482ba5aad9bab180e7ec.jpg",
                   description: "Chef Wesley Genovart makes this over-the-top, Shake Shack–inspired burger with two thin stacked patties, thick-cut bacon, kimchi and a spicy homemade sauce",
                   ingredients: "1/4 cup sambal oelek (Indonesian chile sauce),1/4 cup mayonnaise,1/4 cup ketchup,4 slices of thick-cut bacon,1 1/4 pounds ground beef chuck, Kosher salt,4 slices of American cheese,4 potato buns, toasted,1 cup chopped drained cabbage kimchi (6 ounces)",
                   directions: "In a small bowl, combine the sambal with the mayonnaise and ketchup and mix well.Light a grill or preheat a grill pan. Grill the bacon over moderate heat, turning, until golden and crisp, about 5 minutes total. Drain on paper towels.Form the beef into eight 1/4-inch-thick burgers and season with salt. Grill over high heat, turning, until browned, 1 minute per side. Make 4 stacks of 2 burgers each on the grill and spoon 1 tablespoon of the sambal mayo over each stack. Top with the cheese, cover and grill over high heat just until the cheese is melted, about 1 minute.Spread the remaining sambal mayo on the bottom buns. Top with the burgers, bacon and kimchi, close and serve.",
                   category: "Burger",
                   datePublished: "2022-02-03",
                   url: "https://www.foodandwine.com/recipes/bacon-and-kimchi-burgers"),
       
        RecipeModel(name: "Caprese Burgers",
                    image: "https://www.foodandwine.com/thmb/xl-dXwgW4vGWqRs9P59TnHjZ47k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/201208-xl-caprese-burgers-559060d97b864fb18e28b384b9031a7f.jpg",
                    description: "In this play on the classic Italian salad, Grace Parisi kneads basil pesto into ground beef before grilling, then tops the burgers with mozzarella, sliced tomatoes, and even more pesto.",
                    ingredients: "2 cups basil leaves,1/4 cup salted roasted almonds,1 garlic clove,1/2 cup extra-virgin olive oil, plus more for brushing,1/4 cup grated Pecorino-Romano cheese,Salt,Freshly ground pepper,1 pound ground beef chuck,1 pound ground beef sirloin,8 ounces fresh mozzarella, cut into 6 slices,6 brioche hamburger buns, split,2 tomatoes, sliced",
                    directions: "In a food processor, combine the basil with the almonds and garlic and pulse until the almonds are finely chopped. Add the 1/2 cup of olive oil and process to a paste. Add the grated Pecorino and pulse to combine. Season the pesto with salt and pepper. You should have about 1 cup.Transfer 1/4 cup of the pesto to a bowl. Add the ground chuck and ground sirloin and a pinch of salt and gently knead to blend. Form the mixture into six 4-inch patties, about 3/4 inch thick. Brush the burger patties lightly with olive oil.Light a grill and oil the grates. Grill the burgers over moderately high heat for 3 minutes. Flip the burgers, top them with the mozzarella slices and close the grill. Cook for 3 minutes longer for medium-rare burgers. Grill the buns until lightly toasted, then spread some of the pesto on the bottoms. Top with the burgers, the tomatoes and the remaining pesto. Close the burgers and serve right away.",
                    category: "Burger",
                    datePublished: "2018-06-11",
                    url: "https://www.foodandwine.com/recipes/caprese-burgers"),
       
        RecipeModel(name: "Crispy Comté Frico Cheeseburgers",
                    image: "https://www.foodandwine.com/thmb/UNC3v0GAxDfbBUlBPg69uwv0tSk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg",
                    description: "Salty, buttery, and slightly sharp, Comté cheese crisps similarly to Parmesan, adding an irresistibly crunchy frico layer to these cheeseburgers. For best results, don't flip the buns straight out of the oven; letting them cool keeps the cheese crispy at the edges and soft in the center. Sommelier and Wine Director Carlos Solorzano-Smith of Matsuhisa in Aspen, Colorado, suggests pairing this burger with a bottle of Bordeaux for a next-level experience: The rich flavor of cheeseburgers goes great with a medium to full-bodied Bordeaux, thanks to their tannins and aromas of black fruits, he says.",
                    ingredients: "8 ounces Comté cheese, shredded (about 2 cups), divided,4 brioche hamburger buns, split,1 ½ pounds ground chuck,2 ½ tablespoons canola oil, divided,1 large red onion, thinly sliced,2 teaspoons kosher salt, divided,1 ¼ teaspoons black pepper, divided,¼ cup (2 ounces) dry red wine,¼ cup mayonnaise,Butter lettuce leaves, for serving",
                    directions: "Preheat oven to 425°F. Line a large rimmed baking sheet with parchment paper. Arrange 4 (1/4-cup) mounds of cheese on prepared pan spaced 3 inches apart and 11/2 inches from edges. Flatten each mound into a 3-inch circle. Bake in preheated oven just until edges of cheese rounds look dry and lacy, 6 to 8 minutes. Remove from oven. Working quickly, place 2 split buns, cut sides down, on top of cheese rounds, and press down. Let stand, undisturbed, 5 minutes. Slide parchment with buns off baking sheet, and let buns stand on parchment, undisturbed, until ready to serve. Line baking sheet with fresh parchment; repeat with remaining cheese and buns.While cheese rounds bake, shape beef into 4 (4-inch-wide) patties. Make a slight indentation in center of each patty using your thumb; set aside.Heat 1 1/2 tablespoons oil in a large cast-iron skillet over medium-high. Add onion, 1/2 teaspoon salt, and 1/4 teaspoon pepper; cook, stirring often, until slightly softened and browned around edges, about 8 minutes. Reduce heat to medium-low; cook, stirring often, until softened and lightly browned, 6 to 8 minutes. Add wine; cook, stirring constantly, until wine is absorbed, about 1 minute. Transfer onion mixture to a small bowl, and wipe skillet clean.Sprinkle patties with remaining 1 1/2 teaspoons salt and remaining 1 teaspoon pepper. Heat remaining 1 tablespoon oil in skillet over medium-high. Working in batches, cook patties to desired degree of doneness, about 3 minutes per side for medium. Transfer patties to a plate.Spread 1 tablespoon mayonnaise over cheese on each bottom bun half. Top each with 1 burger patty, 1/4 cup cooked onions, and lettuce. Cover with top buns, cheese sides down.",
                    category: "Burger",
                    datePublished: "2015-03-08",
                    url: "https://www.foodandwine.com/recipes/crispy-comte-cheeseburgers"),
        
        RecipeModel(name: "Next-Level Turkey Burgers with Lemon Aioli",
                    image: "https://www.foodandwine.com/thmb/r0hHqvdm_QoA-1P3MK2XAWs2OFc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Next-Level-Turkey-Burgers-with-Lemon-Aioli-FT-recipe0719-b512f54f918a4364b5fc6c64873d0885.jpg",
                    description: "A quick brine produces super-moist burgers with chin-dripping juices. The brining also helps the burgers cook faster, so flip them often to help them cook evenly and prevent charring.",
                    ingredients: "8 cups warm water,2/3 cup plus 1 teaspoon kosher salt, divided, plus more,1 tablespoon light brown sugar,1 1/2 pounds boneless, skinless turkey pieces (such as breasts, thighs, and drumsticks), cut into 1-inch pieces, 1/2 pound boneless, skinless chicken thighs, cut into 1-inch pieces, 1 tablespoon finely chopped fresh flat-leaf parsley, 1 tablespoon finely chopped fresh oregano, 6 ounces English cheddar cheese, grated (about 1 1/2 cups), 6 hamburger or brioche buns, split ",
                    directions: "Whisk together 8 cups warm water, 2/3 cup salt, brown sugar, and 1 tablespoon lemon juice in a large bowl or pot until salt and sugar dissolve. Add turkey and chicken. Cover and chill 1 hour and 30 minutes. Place a colander in sink; drain meat in colander, rinse with fresh water, and set meat aside.While meat chills, process onion, garlic, and jalapeño in a food processor until very finely chopped, about 10 seconds. Heat oil in a medium skillet over medium. Add onion mixture and a pinch of salt; cook, stirring often, until softened, 5 to 7 minutes. Stir in parsley, oregano, and rosemary; cook, stirring constantly, 1 minute. Remove from heat; transfer sofrito to a small bowl. Chill, uncovered, 20 minutes.Stir together mayonnaise, 1 teaspoon salt, lemon zest, and remaining 2 tablespoons lemon juice until smooth. Cover and refrigerate until ready to use.Preheat grill to high (450°F to 500°F). Working in 4 batches, place brined meat in a food processor; pulse until mixture forms a coarse paste, about 7 (2-second) pulses. Transfer to a medium bowl. Add sofrito; mix with hands until thoroughly combined. Shape into 6 tightly packed 7-ounce patties. Grill, uncovered, flipping often, until a thermometer registers 155°F, 10 to 13 minutes. Top each patty with about 1/4 cup cheese. Grill, covered, until cheese melts, about 2 minutes.Season tomatoes with salt and pepper. Spread each bun with 1 teaspoon aioli and 1 teaspoon barbecue sauce. Top each bottom bun half with 1 patty, 1/4 cup lettuce, and 1 tomato slice. Cover burgers with top bun halves.",
                    category: "Burger",
                    datePublished: "2020-07-29",
                    url: "https://www.foodandwine.com/recipes/next-level-turkey-burgers-lemon-aioli"),
        
            RecipeModel(name: "Shrimp Burgers",
                        image: "https://www.foodandwine.com/thmb/5QvkJn5m45vTENHTZWsg1BzsoFQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fwtrending1785_shrimpburgers-2000-6bfdf3659ffb45c89510b3e84e9983b4.jpg",
                        description: "This hearty shrimp burger is a nod to the classic New Orleans po’boy, but without the hassle of pulling out the deep fryer. The trick here is putting half the shrimp into a food processor to use as a binder for the burger, meaning that the patty has more shrimp flavor. Here, we used Old Bay seasoning, but you could also swap in your favorite Cajun seasoning, like Tony Chachere or Slap Ya Mama, for something the hews even closer to a po’boy. If keeping things meat-free isn’t a concern, this is particularly delicious cooked in bacon grease instead of butter.",
                        ingredients: "5 tablespoons unsalted butter, divided,1 pound peeled and deveined raw large shrimp, cut into 1/2-inch pieces, divided,1 large egg,3/4 cup panko,1/4 cup finely chopped scallions (from 2 scallions),4 sesame seed hamburger buns, split and toasted,1 cup shredded iceberg lettuce (from 1 small head), 1 small tomato (about 6 ounces), sliced, 1 ripe medium-size avocado (about 7 ounces), sliced",
                        directions: "Place 3 tablespoons butter in a small microwavable bowl. Microwave on HIGH until melted, about 25 seconds. Combine melted butter, half of shrimp, and egg in bowl of a food processor. Pulse until finely chopped and mixture starts to clump together, about 12 times. Gently stir together shrimp mixture, panko, scallions, 1 1/4 teaspoons salt, 1/2 teaspoon Old Bay, lemon zest, 1 tablespoon lemon juice, and remaining shrimp in a large bowl. Shape mixture into 4 (3 1/2-inch) patties (about 5 1/2 ounces each). Transfer patties to a parchment paper–lined baking sheet; cover and chill until firm, about 15 minutes.Meanwhile, stir together mayonnaise, mustard, hot sauce, remaining 1/2 tablespoon lemon juice, remaining 1/4 teaspoon salt, and remaining 1/4 teaspoon Old Bay in a small bowl; set aside.Melt remaining 2 tablespoons butter in a large nonstick skillet over medium-low. Add shrimp patties, and cook until golden brown and cooked through, 5 to 6 minutes per side. Spread mayonnaise mixture evenly on cut sides of buns. Top bottom bun halves evenly with shrimp patties, lettuce, tomato slices, and avocado slices; cover with top bun halves.",
                        category: "Burger",
                        datePublished: "2021-06-11",
                        url: "https://www.foodandwine.com/recipes/shrimp-burgers")
    ]
}
