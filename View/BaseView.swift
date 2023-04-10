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
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("Nutrition")
                    NutritionView()
                    .tag(Tab.Nutrition)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("Calculator")
                    .tag(Tab.Calculator)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                Text("Person")
//                    .tag(Tab.Person)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .foregroundColor(Color("orange"))
//                    .background(Color.black)
//                
            }
            .overlay(
                HStack(spacing: 0) {
                    TabButton(Tab: .Home)
                    TabButton(Tab: .Nutrition)
                    TabButton(Tab: .Calculator)
                }.background(Color.black)
                    .offset(y: baseData.showDetail ? 200 : 0)
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
                .background(Color("gray").opacity(0.45))
                .frame(width: 25, height: 80)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
        }
    }
}


struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
