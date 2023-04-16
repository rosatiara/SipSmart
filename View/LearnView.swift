import SwiftUI
import Foundation

struct LearnView: View {
    @State private var showFactView = false
    @State private var selectedMyth: Fact? = nil
    
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
                    Text("Get ready to satisfy your curiosity and learn interesting tidbits about this sweet substance. From its various forms and hidden sources to its impact on mood, oral health, and more, discover fascinating facts that will deepen your understanding of sugar. Let's dive into the sweet world of sugar and uncover some intriguing facts that might surprise you!")
                        .multilineTextAlignment(.center)
                }
                .foregroundColor(Color("myBlue"))
                .padding(.top, UIScreen.main.bounds.height * 0.05)
                .padding(.bottom, 40)
                ScrollView(.vertical, showsIndicators: false) {
                    let columns = Array(repeating: GridItem(.flexible()), count: 3)
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
    let myth: Fact
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
                Text(myth.explanation)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(myth.factTheme)
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
        .foregroundColor(myth.factTheme)
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

