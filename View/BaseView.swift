//
//  BaseView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = BaseViewModel()
    
    init() {
        UITabBar.appearance().isHidden = false
    }
    
    var body: some View {
            TabView(selection: $baseData.currentTab) {
                HomeView()
                    .environmentObject(baseData)
                    .tag(Tab.Home)
                Text("Nutrition")
                    NutritionView()
                    .tag(Tab.Nutrition)
                Text("Calculator")
                    CalculatorViewPage()
                    .tag(Tab.Calculator)
                Text("Learn")
                    LearnView()
                    .tag(Tab.Learn)
               
            }
            .overlay(
                HStack(spacing: 0) {
                    TabButton(Tab: .Home)
                    TabButton(Tab: .Nutrition)
                    TabButton(Tab: .Calculator)
                    TabButton(Tab: .Learn)
                }.background(Color("myBlue"))
                    .offset(y: baseData.showDetail ? 0 : 0)
                ,alignment: .bottom
            )
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
        VStack {
            Button {
                withAnimation {
                    baseData.currentTab = Tab
                }
                
            } label: {
                Image(Tab.rawValue)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 40)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color("myOrange"))
                    .padding(.top, 20)
            }
            Text(Tab.rawValue)
                .foregroundColor(Color("myOrange"))
        }
        
    }
}


struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
