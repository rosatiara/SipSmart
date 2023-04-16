import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: BaseView(),
                label: {
                    EmptyView()
                })
            OpeningView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
