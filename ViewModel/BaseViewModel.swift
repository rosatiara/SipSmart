//
//  BaseViewModel.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import Foundation

class BaseViewModel: ObservableObject {
    @Published var currentTab: Tab = .Home
    @Published var homeTab = "Drinks"
    
    @Published var currentDrink: Drink?
    @Published var showDetail = false
    
}

enum Tab: String {
    case Home = "home"
    case Nutrition = "nutrition"
    case Calculator = "calculator"
    case Person = "person"
}

