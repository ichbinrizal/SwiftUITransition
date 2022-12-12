//
//  ContentView.swift
//  SwiftUITransition
//
//  Created by Rizal on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    // Mark: Properties
    @State var CardViews = cardViewList
    @State private var isShowing: Bool = false
    
    // Mark: Body
    var body: some View {
        VStack {
            HStack {
                Text("Whats new, in SwiftUI?")
                //.frame(width: 256, height: 200)
                    .font(.system(size: 48, design: .rounded))
                    .fontWeight(.bold)
                Spacer()
            } //: HStack
            Spacer()
            VStack (alignment: .leading, spacing: 5) {
                if !isShowing {
                    Image("navigation")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 380, height: 370)
                        .transition(.scaleAndOffset)
                    Text("SwiftUI")
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .padding([.top, .leading])
                    Text("Navigation API")
                        .font(.system(size: 24, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    Text("iSwift Bootcamp")
                        .font(.system(size: 14, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading)
                    HStack {
                        Image(systemName: "star.fill")
                            .padding(.leading)
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                    }
                    Text("Leverage programmatic control over your app’s navigation behavior to set its launch state, manage transitions between size classes, respond to deep links, and more.")
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading)
                } else {
                    Image("charts")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 380, height: 250)
                        .transition(.scaleAndOffset)
                    Text("SwiftUI")
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .padding([.top, .leading])
                    Text("Swift Charts")
                        .font(.system(size: 24, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    Text("iSwift Bootcamp")
                        .font(.system(size: 14, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading)
                    HStack {
                        Image(systemName: "star.fill")
                            .padding(.leading)
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .font(.system(size: 10, design: .rounded))
                            .foregroundColor(.yellow)
                    }
                    Text("Visualize data with highly customizable charts that look and feel great across all Apple platforms. Swift Charts uses the compositional syntax of SwiftUI to create views with many possibilities, from line and bar charts to advanced types like stream graphs.")
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .padding([.leading, .bottom])
                }
                
                
            } //: VStack
            
            .cornerRadius(10)
            .border(.gray.opacity(0.1))
            .onTapGesture {
                withAnimation(Animation.spring()) {
                    isShowing.toggle()
                }
                
            }
            
            
        } //: VStack
        .padding()
    }
}


// Mark: View
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


