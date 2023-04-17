//
//  LearnView.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 14/04/23.
//

import SwiftUI
import Foundation

struct LearnView: View {
    @State private var showFactView = false
    @State private var selectedFact: Fact? = nil
    
    var body: some View {
        ZStack {
            Image("CalcViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Sip into Sweetness: Discover Sugar's Secrets")
                        .fontWeight(.heavy)
                        .font(.system(size: 38))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                        .padding(.top, UIScreen.main.bounds.height * 0.01)
                    Text("From its various forms and hidden sources to its impact on mood, oral health, and more, discover fascinating facts that will deepen your understanding of sugar. These **cute sugar cubes** will help you to  dive into the sweet world of sugar and uncover some intriguing facts about it!")
                        .multilineTextAlignment(.center)
                }
                .foregroundColor(Color("myBlue"))
                .padding(.top, UIScreen.main.bounds.height * 0.05)
                .padding(.bottom, 20)
                ScrollView(.vertical, showsIndicators: false) {
                    let columns = Array(repeating: GridItem(.flexible()), count: 3)
                    LazyVGrid(columns: columns) {
                        ForEach(facts) { fact in
                            CardView(myth: fact)
                                .onTapGesture {
                                    withAnimation {
                                        selectedFact = fact
                                        showFactView = true
                                    }
                                }
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, UIScreen.main.bounds.width * 0.05)
            .blur(radius: showFactView ? 10 : 0) // Apply blur when FactView is shown
            
            if showFactView {
                FactView(fact: selectedFact!, showFactView: $showFactView)
            }
        }
    }
    @ViewBuilder func CardView(myth: Fact) -> some View {
        ZStack() {
            Circle()
                .stroke(myth.factTheme)
            Text(myth.factTitle)
                .bold()
                .foregroundColor(myth.factTheme)
                .frame(maxWidth: 150)
                .multilineTextAlignment(.center)
            Image(myth.factImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.12)
                .offset(x:-70,  y: 90)
        }
        
        //.frame(width: 220, height: 280)
        .frame(width: UIScreen.main.bounds.width * 0.28, height: UIScreen.main.bounds.height * 0.2)
        .background(Color.white, in: Circle())
        .padding(.bottom, 40)
    }
    
}

struct FactView: View {
    let fact: Fact
    @Binding var showFactView: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: UIScreen.main.bounds.height * 0.2)
                .cornerRadius(20)
                .padding()
            VStack {
                Button(action: {
                    withAnimation {
                        showFactView = false
                    }
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .padding(.top, 40)
                        .padding(.trailing, 40)
                })
                
                .frame(maxWidth: .infinity, alignment: .trailing)
                Text(fact.explanation)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(fact.factTheme)
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, UIScreen.main.bounds.height * 0.05)
                    .padding(.top, UIScreen.main.bounds.height * 0.005)
                                
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.85)
        .background(BlurView(style: .systemUltraThinMaterial))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(.top, UIScreen.main.bounds.height * 0.1)
        .foregroundColor(fact.factTheme)
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

