import SwiftUI
import Foundation

struct LearnView: View {
    @State private var showFactView = false
    @State private var selectedMyth: Myth? = nil
    
    var body: some View {
        ZStack {
            Image("CalcViewBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Debunking Sugar Myths")
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .padding(.bottom, 20)
                    Text("The World Health Organization (WHO) recommends limiting free sugars (sugars added to foods and beverages) to **less than 10% of total energy intake for adults**. They also encourage further reduction to below 5% for additional health benefits, equivalent to roughly 25 grams or 6 teaspoons of sugar per day for adults. \n\n SipCalc will help you to keep tabs on how much added sugar you're sipping. 💪")
                        .multilineTextAlignment(.center)
                }
                .foregroundColor(Color("myBlue"))
                .padding(.top, UIScreen.main.bounds.height * 0.05)
                .padding(.bottom, 40)
                
                let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
                LazyVGrid(columns: columns) {
                    ForEach(myths) { myth in
                        CardView(myth: myth)
                            .onTapGesture {
                                withAnimation {
                                    selectedMyth = myth
                                    showFactView = true
                                }
                            }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, UIScreen.main.bounds.width * 0.05)
            .blur(radius: showFactView ? 10 : 0) // Apply blur when FactView is shown
            
            if showFactView {
                FactView(myth: selectedMyth!, showFactView: $showFactView)
            }
        }
    }
    @ViewBuilder func CardView(myth: Myth) -> some View {
        ZStack() {
            Circle()
                .stroke(myth.mythTheme)
            Text(myth.mythDesc)
                .bold()
                .foregroundColor(myth.mythTheme)
                .frame(maxWidth: 150)
                .multilineTextAlignment(.center)
            Image(myth.mythImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.15)
                .offset(x:-80,  y: 100)
        }
        
        //.frame(width: 220, height: 280)
        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.2)
        .background(Color.white, in: Circle())
        .padding(.bottom, 40)
    }

}

struct FactView: View {
    let myth: Myth
    @Binding var showFactView: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: UIScreen.main.bounds.height * 0.2)
                .cornerRadius(20)
                .padding()
            VStack {
                Text(myth.mythDesc)
                    .bold()
                    .foregroundColor(myth.mythTheme)
                    .frame(maxWidth: 150)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                    withAnimation {
                        showFactView = false
                    }
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .font(.title)
                        .padding(.top, 8)
                        .padding(.trailing, 8)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .background(BlurView(style: .systemUltraThinMaterial))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(.top, UIScreen.main.bounds.height * 0.1)
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

