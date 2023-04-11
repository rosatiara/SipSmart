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
                    .tag(Tab.Calculator)
               
            }
            .overlay(
                HStack(spacing: 0) {
                    TabButton(Tab: .Home)
                    TabButton(Tab: .Nutrition)
                    TabButton(Tab: .Calculator)
                }.background(Color("myBlue"))
                    .offset(y: baseData.showDetail ? 0 : 0)
                ,alignment: .bottom
            )
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
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
                .padding(.top, 30)
                .border(.red)
        }
    }
}


struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
