import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
           ExploreScreenUI()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            SERV()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("main")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Tab")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
