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
    var drinkBG: Color
}

let drinks = [

Drink(drinkImage: "latte", drinkName: "Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", drinkBG: Color("bg1")),
Drink(drinkImage: "soda", drinkName: "Milkshake", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", drinkBG: Color("bg2")),
Drink(drinkImage: "slushy", drinkName: "Lemon Tea", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", drinkBG: Color("bg3")),
Drink(drinkImage: "americano", drinkName: "Juice Box", teaspoon: "0", drinkDesc: "healthy", quote: "never give up", drinkBG: Color("bg4")),

]
