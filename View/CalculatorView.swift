//
//  CalculatorView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var totalServingSlider: Double
    @Binding var totalSugarSlider: Double
    @Binding var addedSugarSlider: Double
    
    var body: some View {
            VStack {
                VStack(alignment: .leading) { // Total servings per package
                    HStack {
                        Text("Total sugars (g)")
                            .font(.system(size: 24))
                            .foregroundColor(Color("myBlue"))
                        Spacer()
                        Text("\(totalSugarSlider, specifier: "%.0f")")
                            .font(.title)
                            .bold()
                            .padding(.top, 4)
                            .foregroundColor(Color("myBlue"))
                    }
                    Slider(
                        value: $totalSugarSlider,
                        in: 0...100
                    ).accentColor(Color("myOrange"))
                    Divider()
                }
                VStack(alignment: .leading) { // Total servings per package
                    HStack {
                        Text("Added sugars (g)")
                            .font(.system(size: 24))
                            .foregroundColor(Color("myBlue"))
                        Spacer()
                        Text("\(addedSugarSlider, specifier: "%.0f")")
                            .font(.title)
                            .bold()
                            .padding(.top, 4)
                            .foregroundColor(Color("myBlue"))
                    }
                    Slider(
                        value: $addedSugarSlider,
                        in: 0...80
                    ).accentColor(Color("myOrange"))
                    Divider()
                }
                VStack(alignment: .leading) { // Serving size
                    HStack {
                        Text("Total servings per container")
                            .font(.system(size: 24))
                            .foregroundColor(Color("myBlue"))
                        Spacer()
                        Text("\(totalServingSlider, specifier: "%.0f")")
                            .font(.title)
                            .bold()
                            .padding(.top, 4)
                            .foregroundColor(Color("myBlue"))
                    }
                    Slider(
                        value: $totalServingSlider,
                        in: 1...10
                    ).accentColor(Color("myOrange"))
                    Divider()
                        .foregroundColor(.blue)
                }

                .padding(.top, 16)
                VStack {
                    Text("Total sugars per package")
                        .font(.system(size: 24))
                        .foregroundColor(Color("myBlue"))
                        Text("\(calculateTotalSugar(), specifier: "%.0f")")
                            .font(.largeTitle)
                            .bold()
                        Text("\(calculateSugar())")
                        .font(.system(size: 24))
                            .foregroundColor(Color("myBlue"))
                            .multilineTextAlignment(.center)
                            .padding(.top, 2)
                }
                .padding(.top, 16)
            }
    }
    
    func calculateTotalSugar() -> Double {
        return totalServingSlider * totalSugarSlider
    }
    
    func calculateAddedSugar() -> Double {
        return totalServingSlider * addedSugarSlider
    }
    
    func calculateTotalTeaspoons() -> (Double, Double) {
        var totalTsp: Double
        var totalAddedTsp: Double
        totalTsp = calculateTotalSugar() * 0.23999
        totalAddedTsp = calculateAddedSugar() * 0.23999
        return (totalTsp, totalAddedTsp)
    }
    
    func calculateSugar() -> String {
        let totalSugar = Int(calculateTotalSugar())
        let addedSugar = Int(calculateAddedSugar())
        let totalTeaspoons = calculateTotalTeaspoons()
        switch calculateAddedSugar() {
        case 0..<18.5:
            return "If you enjoy the entire package, you'll be treating yourself to \(totalSugar)g of sugars, \(addedSugar)g of which are added sugars."
        case 18.6..<24.9:
            return "If you enjoy the entire package, you'll be treating yourself to  \(totalSugar)g of sugars, \(addedSugar)g of which are added sugars."
        default:
            return "If you enjoy the entire package, you'll be treating yourself to \(totalSugar)g of sugars, \(addedSugar)g of which are added sugars.\nThat has surpassed the WHO's recommendation of daily sugar intake. \n\nThat is equal to \(totalTeaspoons.0) teaspoons of sugar."
        }
    }
}

/*
 TODO:
 - TAMBAHIN TEASPOONS OF SUGAR BUAT ADDED SUGAR
 - coba solution #2 https://stackoverflow.com/questions/27531195/return-multiple-values-from-a-function-in-swift
 */

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(totalServingSlider: .constant(67.0), totalSugarSlider: .constant(177), addedSugarSlider: .constant(12))
        
    }
}
