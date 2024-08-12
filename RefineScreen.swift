//
//  RefineScreen.swift
//  Netclan Explorer
//
//  Created by Omveer Panwar on 16/07/24.
//
import SwiftUI
extension Color {
    static let customGreen = Color(red: 7/255, green: 86/255, blue: 89/255)}
struct RefineScreen: View {
    @State private var availability: String = "Available | Hey Lets Connect"
    @State private var status: String = "Hi community! I am open to new connections 🙂"
    @State private var distance: Int = 50
    @State private var purposes: [String] = ["Coffee", "Business", "Hobbies", "Friendship", "Movies", "Dining", "Dating", "Matrimony"]
    @State private var progress: CGFloat = 0.9


    var body: some View {
        VStack(alignment: .leading) {
            Text("Select Your Availability")
                .font(.headline)
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .overlay(
                    Picker("Availability", selection: $availability) {
                        Text("Available | Hey Lets Connect").tag("Available | Hey Lets Connect").foregroundColor(.black)
                        // Add more options as needed
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                    .clipped()
                )
                .frame(height: 40) // adjust the height to your liking
            Text("Add Your Status")
               .font(.headline)
            RoundedRectangle(cornerRadius: 10)
               .stroke(Color.gray, lineWidth: 1)
               .overlay(
                        TextField("Enter your status", text: $status)
                    
                   .padding(.horizontal)
                )
               .frame(height: 80)
            HStack{
                Spacer()
                Text("42/150").font(.caption)
            }
            
            Text("Select Hyperlocal Distance")
                .font(.headline)
            HStack{
                Text("0")
                ZStack(alignment:.leading) {
                    Rectangle()
                        .fill(Color.customGreen.opacity(0.3))
                        .frame(width: 300, height: 10)
                    
                    Circle()
                        .fill(Color.customGreen)
                        .frame(width: 20, height: 20)
                        .offset(x: 200 * progress)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    let newProgress = min(max(value.location.x / 200, 0), 1.4)
                                    self.progress = newProgress
                                }
                        )
                }
                Text("100")
            }
            .pickerStyle(.menu)

            Text("Select Purpose")
                .font(.headline)
            HStack{
                Text("Coffee")
                    .font(.system(size: 17))
                    .padding()
                    .frame(width: 100, height: 50)
                    .background(Color.customGreen)
                    .cornerRadius(25)
                    .foregroundColor(.white)
                Spacer()
                Text("BUSINESS")
                    .font(.system(size: 17))
                    .padding()
                    .frame(width: 100, height: 50)
                    .background(Color.customGreen)
                    .cornerRadius(25)
                    .foregroundColor(.white)
                Spacer()
                Text("FRIENDSHIP")
                    .font(.system(size: 17))
                    .padding()
                    .frame(width: 100, height: 50)
                    .background(Color.customGreen)
                    .cornerRadius(25)
                    .foregroundColor(.white)
            }
            HStack{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 100, height: 50) // Adjust the frame size as needed
                    .overlay(
                        Text("Movies")
                            .font(.system(size: 20)) // Adjust the text size as needed
                            .foregroundColor(.black) // Set the text color
                    )
                Spacer()
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 100, height: 50) // Adjust the frame size as needed
                    .overlay(
                        Text("Dating")
                            .font(.system(size: 17)) // Adjust the text size as needed
                            .foregroundColor(.black) // Set the text color
                    )
                Spacer()
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 100, height: 50) // Adjust the frame size as needed
                    .overlay(
                        Text("Hobbies")
                            .font(.system(size: 17)) // Adjust the text size as needed
                            .foregroundColor(.black) // Set the text color
                    )
            }
            HStack{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 100, height: 50) // Adjust the frame size as needed
                    .overlay(
                        Text("Dinning")
                            .font(.system(size: 17)) // Adjust the text size as needed
                            .foregroundColor(.black) // Set the text color
                    ).padding(.trailing,22)
               
                Text("Matrimony")
                    .font(.system(size: 17))
                    .padding()
                    .frame(width: 100, height: 50)
                    .background(Color.customGreen)
                    .cornerRadius(25)
                    .foregroundColor(.white)
            }
            Spacer()
            HStack{
                Spacer()
                Text("Save & Explore")
                    .font(.system(size: 23))
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.customGreen)
                    .cornerRadius(25)
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .padding()
    }
}
#Preview {
    RefineScreen()
}
