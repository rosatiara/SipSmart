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
                        Text("Total Sugar per Package")
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
                            .frame(width: 760, height: 350)
                            .foregroundColor(.white)
                        VStack {
                            HStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("myOrange"))
                                    .frame(width:180, height: 90)
                                    .padding(.trailing, 10)
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("myBlue"))
                                    .frame(width:180, height: 90)
                            }.offset(y: -110)
                            Text(drink.quote)
                                .italic()
                                .fontWeight(.regular)
                                .font(.system(size: 30))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 64)
                                .offset(y: -80)
                            Text(drink.quoteAuthor)
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .offset(y: -50)

                        }
                        
                    }
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
