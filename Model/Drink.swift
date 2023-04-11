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
    var teaspoon: String
    var drinkDesc: String
    var quote: String
    var quoteAuthor: String
    var drinkBG: Color
}

let drinks = [
    
    Drink(drinkImage: "water-bottle", drinkName: "Water", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", quoteAuthor:"" , drinkBG: Color("bg1")),
    Drink(drinkImage: "whole-milk", drinkName: "Whole Milk", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", quoteAuthor:"", drinkBG: Color("bg2")),
    Drink(drinkImage: "soda", drinkName: "Soda / Coke", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg3")),
    Drink(drinkImage: "slushy", drinkName: "Slushy", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", quoteAuthor:"", drinkBG: Color("bg4")),
    Drink(drinkImage: "milkshake", drinkName: "Milkshake", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg1")),
    Drink(drinkImage: "lemon-tea", drinkName: "Lemon Tea", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg2")),
    Drink(drinkImage: "latte", drinkName: "Iced Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg3")),
    Drink(drinkImage: "juice-drink", drinkName: "Energy Drink", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg4")),
    Drink(drinkImage: "juice-box", drinkName: "Juice Box", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg1")),
    Drink(drinkImage: "iced-matcha", drinkName: "Iced Matcha", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg2")),
    Drink(drinkImage: "americano", drinkName: "Americano", teaspoon: "0", drinkDesc: "healthy", quote: "never give up",quoteAuthor:"", drinkBG: Color("bg3")),
    
]

/**
 1. “When health is absent, wisdom cannot reveal itself, art cannot manifest, strength cannot fight, wealth becomes useless, and intelligence cannot be applied.”
 ― Herophilus
 
 2.  “The First wealth is health.”
 ― Ralph Waldo Emerson
 
 3. “By choosing healthy over skinny you are choosing self-love over self-judgment. You are beautiful!”
 ― Steve Maraboli
 
 4. “If you truly treat your body like a temple, it will serve you well for decades. If you abuse it, you must be prepared for poor health and a lack of energy.” – Oli Hille
 
 5. “If your body’s not right, the rest of your day will go all wrong. Take care of yourself.” – V.L. Allineare
 
 6. “Some struggle is healthy. If you can embrace it rather than be angry, you can use it as your pilot light.” – Damon Wayans
 
 7. "To keep a body in a good health is a duty. Otherwise we shall not be ableto keep our mind strong and clear" = Buddha
 
 **/
