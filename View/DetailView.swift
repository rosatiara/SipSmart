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
                                .frame(width: 36, height: 36)
                                .padding(.leading, 54)
                        }
                        Spacer()
                        Text("Total Added Sugar per Package")
                            .font(.system(size: 34))
                            .fontWeight(.semibold)
                        Spacer()
                            .frame(width: 225)
                    }.foregroundColor(Color("myBlue"))
                        .padding(.bottom, 50)
                        .padding(.top, 64)
                    Image(drink.drinkImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: 230)
                    VStack {
                        Text(drink.drinkName)
                            .fontWeight(.black)
                            .font(.system(size: 48))
                        Text(drink.packageSize)
                            .font(.system(size: 28))
                    }.foregroundColor(Color("myBlue")).multilineTextAlignment(.center).padding(.bottom, 90)
                    ZStack { // Bottom Card
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
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
                                
                            }.offset(y: -110)
                            Text("Healthier Alternatives")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .offset(y: -90)
                                .foregroundColor(Color("myBlue"))
                            Text(drink.alternatives)
                                .fontWeight(.regular)
                                .font(.system(size: 26))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 64)
                                .offset(y: -70)
                                .foregroundColor(Color("myBlue"))
                                .frame(maxWidth: 750)
                        }
                    }.offset(y: -10)
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
