import SwiftUI

extension Color {
    static let customGray = Color(red: 17 / 255, green: 61 / 255, blue: 90 / 255)
    static let customBlue = Color(red: 58 / 255, green: 198 / 255, blue: 254 / 255)
}

struct ExploreScreenUI: View {
    @State private var selectedTab = "Personal"
    @State private var tabWidth: CGFloat = 0
    @State private var tabOffset: CGFloat = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack(alignment: .topLeading) {
                    Color(UIColor(red: 0.11, green: 0.24, blue: 0.31, alpha: 1.0))
                        .frame(height: 130)
                        .ignoresSafeArea(edges: .top)
                    
                    HStack {
                        Image(systemName: "text.justify.left")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Howdy OP!!")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            HStack {
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(.white)
                                Text("Nagrota, Jammu")
                                    .foregroundColor(.white)
                            }.padding(.bottom)
                        }
                        Spacer()
                        
                        NavigationLink(destination: RefineScreen()) {
                            VStack {
                                Image(systemName: "slider.horizontal.2.square")
                                    .foregroundColor(.white)
                                    .font(.system(size: 23))
                                    .padding(.bottom, 2)
                                Text("REFINE")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 20)
                            }
                        }
                    }.padding(.bottom)
                }
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.bottom)
                
                Rectangle()
                    .fill(Color.customBlue)
                    .frame(height: 2)
                    .offset(y: -70) // Adjust line height as needed
                
                ZStack(alignment: .bottomLeading) {
                    Color.customGray
                        .frame(height: 60)
                    
                    HStack(spacing: 0) {
                        Button(action: {
                            withAnimation {
                                self.selectedTab = "Personal"
                                self.tabOffset = 0
                            }
                        }) {
                            Text("Personal")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(selectedTab == "Personal" ? .white : .gray)
                                .frame(maxWidth: .infinity)
                        }
                        
                        Button(action: {
                            withAnimation {
                                self.selectedTab = "Services"
                                self.tabOffset = self.tabWidth
                            }
                        }) {
                            Text("Services")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(selectedTab == "Services" ? .white : .gray)
                                .frame(maxWidth: .infinity)
                        }
                        
                        Button(action: {
                            withAnimation {
                                self.selectedTab = "Businesses"
                                self.tabOffset = self.tabWidth * 2
                            }
                        }) {
                            Text("Businesses")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(selectedTab == "Businesses" ? .white : .gray)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: tabWidth, height: 4)
                        .offset(x: tabOffset)
                        .animation(.easeInOut(duration: 0.3))
                }
                .offset(y: -70) // Reduced offset value
                Spacer()
                
                VStack {
                    switch selectedTab {
                    case "Personal":
                        PersonalView()
                    case "Services":
                        ServicesView()
                    case "Businesses":
                        BusinessesView()
                    default:
                        Text("Select a tab")
                    }
                }
                .padding(.top, -60) // Adjust padding to reduce gap
            }
            .onAppear {
                self.tabWidth = UIScreen.main.bounds.width / 3
            }
        }
    }
    
    struct PersonalView: View {
        var body: some View {
            CardViewPersonal()
            Spacer()
        }
    }
    
    struct ServicesView: View {
        var body: some View {
            CardViewExplore_()
            Spacer()
        }
    }
    
    struct BusinessesView: View {
        var body: some View {
            SERV()
            Spacer()
        }
    }
}



struct ExploreScreenUI_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreenUI()
    }
}
