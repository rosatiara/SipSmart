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
    var alternatives: String
    var drinkBG: Color
}

let drinks = [
    Drink(drinkImage: "water-bottle",
          drinkName: "Water",
          packageSize: "600mL",
          totalSugar: "0g",
          teaspoon: "0",
          alternatives: "Good choice! 😉 When it comes to making the most health-conscious choice for a drink, nothing beats water - the ultimate source of hydration!",
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "whole-milk",
          drinkName: "Flavoured Milk",
          packageSize: "1 quart (976g)",
          totalSugar: "51g",
          teaspoon: "12.23",
          alternatives: "Instead of flavored or chocolate milk, choose plain milk or unsweetened plant-based milk, and add your own natural flavorings like cocoa powder, vanilla extract, or cinnamon.",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "soda",
          drinkName: "Soda / Coke",
          packageSize: "12 fl oz (368g)",
          totalSugar: "39g",
          teaspoon: "9.35",
          alternatives: "Opt for sparkling water with a splash of fresh fruit juice or infused with slices of citrus fruits, cucumber, or mint for a refreshing and naturally flavored beverage.",
          drinkBG: Color("bg3")),
    
    Drink(drinkImage: "slushy",
          drinkName: "Slushy",
          packageSize: "232mL",
          totalSugar: "76g",
          teaspoon: "18",
          alternatives: "A smoothie made with blended frozen fruits, yogurt or whole milk. For natural and healthy sweeteners, try honey or agave.",
          drinkBG: Color("bg4")),
    
    Drink(drinkImage: "milkshake",
          drinkName: "Milkshake",
          packageSize: "1 container (11 oz)",
          totalSugar: "56g",
          teaspoon: "13.5",
          alternatives: "A protein shake made with a high-quality protein powder, water or milk, and try to add some fruits or veggies with some natural sweeteners to enhance the taste.",
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "lemon-tea",
          drinkName: "Sweet Iced Tea",
          packageSize: "16-ounce (473mL)",
          totalSugar: "40g",
          teaspoon: "9.6",
          alternatives: "Explore herbal teas that are naturally caffeine-free and do not contain added sugars. Herbal teas come in a wide variety of flavors, such as mint, chamomile, hibiscus, and fruity blends, and can be served over ice for a refreshing alternative to sweet tea.",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "latte",
          drinkName: "Coffee Latte",
          packageSize: "16-ounce (473mL)",
          totalSugar: "18g",
          teaspoon: "4.3",
          alternatives: "Opt for a simple coffee with milk without adding any sweeteners or syrups. If you still crave some sweetness, consider using sugar-free syrups or sweeteners, such as stevia, erythritol, or monk fruit extract.",
          drinkBG: Color("bg3")),
    
    Drink(drinkImage: "juice-drink",
          drinkName: "Energy Drink",
          packageSize: "16-ounce (473mL)",
          totalSugar: "21g",
          teaspoon: "5",
          alternatives: "Instead of energy drinks loaded with sugar and caffeine, opt for herbal teas, water infused with fruits or herbs, or natural electrolyte drinks made with coconut water and natural sweeteners.",
          drinkBG: Color("bg4")),
    
    Drink(drinkImage: "juice",
          drinkName: "Juice Drink",
          packageSize: "250mL",
          totalSugar: "25.56g",
          teaspoon: "6",
          alternatives: "Instead of juice box, choose freshly squeezed or natural fruit juices without added sugars, or even better, eat whole fruits which are lower in sugar and higher in fiber.",
          drinkBG: Color("bg1")),
    
    Drink(drinkImage: "iced-matcha",
          drinkName: "Matcha Latte",
          packageSize: "16 fl oz",
          totalSugar: "32g",
          teaspoon: "7.6",
          alternatives: "Good health and good sense are two of life's greatest blessings.",
          drinkBG: Color("bg2")),
    
    Drink(drinkImage: "americano",
          drinkName: "Americano",
          packageSize: "250mL",
          totalSugar: "0g",
          teaspoon: "0",
          alternatives: "It is health that is real wealth and not pieces of gold and silver.",
          drinkBG: Color("bg3")),
]

