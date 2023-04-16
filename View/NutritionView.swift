//
//  NutritionView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct NutritionView: View {
    var body: some View {
        ZStack {
            Image("CalcViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Reading Nutrition Facts \n_The Right Way_")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 40))
                    .foregroundColor(Color("myBlue"))
                    .padding(.top, UIScreen.main.bounds.height * 0.05)

                Image("NutritionFacts")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.095)
                        .foregroundColor(Color.white.opacity(0.5))
                    Text("Hey, just a quick heads up - the serving size of different products may vary, so keep that in mind when checking out the label. And don't let those \"low calorie\" drinks fool you - some of them can still have a ton of sugar! So be careful and don't fall for their tricks! 😜 ")
                        .padding()
                        .foregroundColor(Color("myBlue"))
                        .font(.system(size: UIScreen.main.bounds.width * 0.02))

                }.padding(.top, 30)
                Spacer()
            }.padding(.horizontal, 64)
        }
    }

}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}
