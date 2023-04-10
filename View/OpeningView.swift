//
//  HomeView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 10/04/23.
//

import SwiftUI

struct OpeningView: View {
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
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
