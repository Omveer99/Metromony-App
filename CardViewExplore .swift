//
//  CardViewExplore .swift
//  Netclan Explorer
//
//  Created by Omveer Panwar on 16/07/24.
//

import SwiftUI

struct CardViewExplore_: View {
    @State private var search = ""

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                   
                    TextField("Search", text: $search)
                        .padding(10)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                   
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black)
                        .padding()
                        .font(.title)
                }
                .padding(.horizontal)
                .padding(.top, 37)
                .padding(.bottom, 7)
              
            }
                ProfileCardView1()
                ProfileCardView1()
               
            }
            .padding()
        }
    }


struct ProfileCardView1: View {
    
    
    var body: some View {
        VStack {
            
            
            ZStack(alignment: .topLeading) {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 300, height: 150)
                        .shadow(radius: 3)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Omveer Panwar")
                                .font(.headline)
                                .padding(.leading, 50)
                          
                            Text("Pune within 3.9 KM")
                                .font(.callout)
                                .bold()
                                .padding(.leading, 50)
                            HStack {
                                HStack {
                                    Image(systemName: "cup.and.saucer.fill")
                                        .foregroundColor(.brown)
                                    Text("Coffee |")
                                        .font(.headline)
                                        .foregroundColor(.brown)
                                }
                                .padding(.leading, 1)
                                HStack {
                                    Image(systemName: "briefcase.fill")
                                        .foregroundColor(.red)
                                    Text("Business |")
                                        .font(.headline)
                                        .foregroundColor(.brown)
                                }
                                HStack {
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.yellow)
                                    Text("Business |")
                                        .font(.headline)
                                        .foregroundColor(.yellow)
                                }
                            }
                            Text("Hi community! I am open to new connections 😀")
                                .font(.subheadline)
                        }
                        Spacer()
                    }
                    .padding()
                }
                .frame(width: 250, height: 150)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.ustomBlue)
                        .frame(width: 100, height: 80)
                        .padding(.leading, 10)
                    
                    Text("OP")
                        .font(.title)
                        .foregroundColor(Color.bllue)
                        .bold()
                }
                .alignmentGuide(.top) { $0[.top] - -8 }
                .alignmentGuide(.leading) { $0[.leading] - -80 }
            }
        }
        
    }
}
#Preview {
    CardViewExplore_()
}
