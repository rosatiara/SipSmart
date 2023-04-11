//
//  Drink.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import Foundation
import SwiftUI

struct Drink: Identifiable {
    var id = UUID().uuidString
    var drinkImage: String
    var drinkName: String
    var packageSize: String
    var totalSugar: String
    var teaspoon: String
    var quote: String
    var quoteAuthor: String
    var drinkBG: Color
}

let drinks = [
    Drink(drinkImage: "water-bottle",
          drinkName: "Water",
          packageSize: "600mL",
          totalSugar: "0g",
          teaspoon: "0",
          quote: "When health is absent, wisdom cannot reveal itself, art cannot manifest, strength cannot fight, wealth becomes useless, and intelligence cannot be applied.",
          quoteAuthor:"Herophilus" ,
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "whole-milk",
          drinkName: "Whole Milk",
          packageSize: "1 quart (976g)",
          totalSugar: "51g (milk sugar)",
          teaspoon: "12.23",
          quote: "If you truly treat your body like a temple, it will serve you well for decades. If you abuse it, you must be prepared for poor health and a lack of energy.",
          quoteAuthor:"Oli Hille",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "soda",
          drinkName: "Soda / Coke",
          packageSize: "12 fl oz (368g)",
          totalSugar: "39g",
          teaspoon: "9.35",
          quote: "If your body’s not right, the rest of your day will go all wrong. Take care of yourself.",
          quoteAuthor:"V.L. Allineare",
          drinkBG: Color("bg3")),
    
    Drink(drinkImage: "slushy",
          drinkName: "Slushy",
          packageSize: "232mL",
          totalSugar: "76g",
          teaspoon: "18",
          quote: "Some struggle is healthy. If you can embrace it rather than be angry, you can use it as your pilot light.",
          quoteAuthor:"Damon Wayands",
          drinkBG: Color("b4")),
    
    Drink(drinkImage: "milkshake",
          drinkName: "Milkshake",
          packageSize: "1 container (11 oz)",
          totalSugar: "56g",
          teaspoon: "13.5",
          quote: "To keep a body in a good health is a duty. Otherwise we shall not be ableto keep our mind strong and clear",
          quoteAuthor:"Buddha",
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "lemon-tea",
          drinkName: "Sweetened Iced Tea",
          packageSize: "16-ounce (473mL)",
          totalSugar: "40g",
          teaspoon: "9.6",
          quote: "I believe that the greatest gift you can give your family and the world is a healthy you.",
          quoteAuthor: "Joyce Meyer",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "latte",
          drinkName: "Iced Coffee Latte",
          packageSize: "16-ounce (473mL)",
          totalSugar: "18g (milk sugar)",
          teaspoon: "4.3",
          quote: "When you have your health, you have everything. When you do not have your health, nothing else matters at all.",
          quoteAuthor: "Augusten Burroughs",
          drinkBG: Color("bg3")),
    
    Drink(drinkImage: "juice-drink",
          drinkName: "Energy Drink",
          packageSize: "16-ounce (473mL)",
          totalSugar: "21g",
          teaspoon: "5",
          quote: "Good health is a crown worn by the healthy than only the ill can see.",
          quoteAuthor:"Arabic Proverb",
          drinkBG: Color("bg4")),
    
    Drink(drinkImage: "juice-box",
          drinkName: "Juice Box",
          packageSize: "250mL",
          totalSugar: "25.56g",
          teaspoon: "6",
          quote: "Health is not just being disease-free. Health is when every cell in your body is bouncing with joy.",
          quoteAuthor: "Sadhguru",
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "iced-matcha",
          drinkName: "Matcha Latte",
          packageSize: "16 fl oz",
          totalSugar: "32g",
          teaspoon: "7.6",
          quote: "Good health and good sense are two of life's greatest blessings.",
          quoteAuthor: "Publilius Syrus",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "americano",
          drinkName: "Americano",
          packageSize: "250mL",
          totalSugar: "0g",
          teaspoon: "0",
          quote: "It is health that is real wealth and not pieces of gold and silver.",
          quoteAuthor: "Mahatma Gandhi",
          drinkBG: Color("bg3")),
]

/**
 ― Herophilus
 
 
 
 
 
 **/
