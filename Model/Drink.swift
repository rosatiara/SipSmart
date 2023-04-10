//
//  Drink.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import Foundation

struct Drink: Identifiable {
    let id = UUID().uuidString
    let drinkImage: String
    let drinkName: String
    let teaspoon: String
    let drinkDesc: String
    let quote: String
}

let drinks = [

Drink(drinkImage: "latte", drinkName: "Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up"),
Drink(drinkImage: "latte", drinkName: "Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up"),
Drink(drinkImage: "latte", drinkName: "Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up"),
Drink(drinkImage: "latte", drinkName: "Coffee Latte", teaspoon: "0", drinkDesc: "healthy", quote: "never give up"),

]
