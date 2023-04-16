//
//  HomeView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct OpeningView: View {
    @State private var goToBaseView = false

    var body: some View {
        ZStack {
            Image("OpeningViewBg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("SipSmartName")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500)
                Image("SipSmartTagline")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500)
            }
        }
        .onTapGesture{goToBaseView = true}
        .fullScreenCover(isPresented: $goToBaseView) {
                    BaseView()
                }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
