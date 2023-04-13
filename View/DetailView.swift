//
//  DetailView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var baseData: BaseViewModel
    var animation: Namespace.ID
    
    var body: some View {
        if let drink = baseData.currentDrink, baseData.showDetail {
            ZStack {
                Image("HomeViewBg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFit()
                VStack {
                    
                    HStack {
                        Button {
                            withAnimation {
                                baseData.showDetail = false
                            }
                        } label :{
                            Image(systemName: "chevron.left")
                                .renderingMode(.template)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 32, height: 32)
                                .padding(.leading, 48)
                        }
                        Spacer()
                        Text("Total Added Sugar per Package")
                            .font(.system(size: 34))
                        Spacer()
                            .frame(width: UIScreen.main.bounds.width * 0.2)
                    }.foregroundColor(Color("myBlue"))
                        .padding(.bottom, 50)
                        .padding(.top, 64)
                    Spacer()
                    Image(drink.drinkImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: UIScreen.main.bounds.width * 0.25)
                    Spacer()
                    VStack {
                        Text(drink.drinkName)
                            .fontWeight(.black)
                            .font(.system(size: 48))
                        Text(drink.packageSize)
                            .font(.system(size: 28))
                        Spacer()
                            .frame(height: 140)

                        ZStack { // Bottom Card
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.27)
                                .foregroundColor(.white)
                            VStack {
                                HStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color("myOrange"))
                                            .frame(width:180, height: 90)
                                            .padding(.trailing, 10)
                                        Text("\(drink.totalSugar)")
                                            .foregroundColor(Color("myBlue"))
                                            .bold()
                                            .font(.system(size: 22))
                                    }
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color("myBlue"))
                                            .frame(width:180, height: 90)
                                        Text("\(drink.teaspoon) \nteaspoons")
                                            .foregroundColor(Color("myOrange"))
                                            .bold()
                                            .font(.system(size: 22))
                                            .multilineTextAlignment(.center)
                                    }
                                    
                                }.offset(y: -UIScreen.main.bounds.height * 0.06)
                                Text("Healthier Alternatives")
                                    .fontWeight(.bold)
                                    .font(.system(size: 30))
                                    .offset(y: -UIScreen.main.bounds.height * 0.05)
                                    .foregroundColor(Color("myBlue"))
                                Text(drink.alternatives)
                                    .fontWeight(.regular)
                                    .font(.system(size: 26))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 64)
                                    .offset(y: -UIScreen.main.bounds.height * 0.04)
                                    .foregroundColor(Color("myBlue"))
                                    .frame(maxWidth: 750)
                            }
                        }.offset(y: -UIScreen.main.bounds.height * 0.05)
                    }.foregroundColor(Color("myBlue")).multilineTextAlignment(.center)
                    
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //DetailView()
    }
}
