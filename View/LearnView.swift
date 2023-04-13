//
//  LearnView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 13/04/23.
//

import SwiftUI

struct LearnView: View {
    var body: some View {
        ZStack {
            Image("CalcViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
