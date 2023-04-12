//
//  HomeView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct HomeView: View {
    @Namespace var animation
    @EnvironmentObject var baseData: BaseViewModel
    
    var body: some View {
        ZStack {
            Image("HomeViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            VStack {
                VStack {
                    Text("Hello, sipmate! 👋")
                        .fontWeight(.heavy)
                        .font(.system(size: 48))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 0.5)
                    Text("Ready to take control of your sugary drinks intake and improve your health?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 22))
                        .padding(.bottom, 20)

                }.padding(.top, 40).foregroundColor(Color("myBlue"))
                ScrollView(.vertical, showsIndicators: false) {
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
                    LazyVGrid(columns: columns) {
                        ForEach(drinks) { drink in
                            CardView(drink: drink)
                                .onTapGesture {
                                    withAnimation {
                                        baseData.currentDrink = drink
                                        baseData.showDetail = true
                                    }
                                }
                        }
                    }
                }
            }.padding(.horizontal, 64)
                .padding(.top, 40)
        }
        .overlay(DetailView(animation:animation).environmentObject(baseData))
    }
    @ViewBuilder func CardView(drink: Drink) -> some View {
        VStack() {
            Image(drink.drinkImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.1)
                .background(
                    ZStack {
                        Circle()
                            .fill(drink.drinkBG)
                            .frame(width: UIScreen.main.bounds.width * 0.15)
                            .padding(-10)
                        Circle()
                            .stroke(Color.white, lineWidth: 1.4)
                            .padding(-3)
                    }
                )
            Text(drink.drinkName)
                .bold()
                .font(.system(size: 22))
                .padding(.top, 20)
        }
        
        //.frame(width: 220, height: 280)
        .frame(width: UIScreen.main.bounds.width * 0.27, height: UIScreen.main.bounds.height * 0.26)
        .background(Color.white, in: RoundedRectangle(cornerRadius: 25))
        .padding(.top, 15)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(BaseViewModel())
    }
}
