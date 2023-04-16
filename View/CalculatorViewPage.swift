//
//  CalculatorViewPage.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 13/04/23.
//

import SwiftUI

struct CalculatorViewPage: View {
    @State var totalServingSlider = 1.0
    @State var totalSugarSlider = 20.0
    @State var addedSugarSlider = 10.0
    
    var body: some View {
        ZStack {
            Image("CalcViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("SipCalc")
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .padding(.bottom, 20)
                        .padding(.top, UIScreen.main.bounds.height * 0.025)
                    Text("The World Health Organization (WHO) recommends limiting free sugars (sugars added to foods and beverages) to **less than 10% of total energy intake for adults**. They also encourage further reduction to below 5% for additional health benefits, equivalent to roughly 25 grams or 6 teaspoons of sugar per day for adults. \n\n SipCalc will help you to keep tabs on how much added sugar you're sipping. 💪")
                        .multilineTextAlignment(.center)
                }.foregroundColor(Color("myBlue")).padding(.top, UIScreen.main.bounds.height * 0.05).padding(.bottom, 40)
                CalculatorView(
                    totalServingSlider: $totalServingSlider,
                    totalSugarSlider: $totalSugarSlider,
                    addedSugarSlider: $addedSugarSlider
                )
                Spacer()

            }.padding(.horizontal, UIScreen.main.bounds.width * 0.05)
        }
    }
}

struct CalculatorViewPage_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorViewPage()
    }
}
