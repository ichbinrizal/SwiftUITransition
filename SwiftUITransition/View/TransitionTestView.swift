//
//  TransitionTestView.swift
//  TransitionTest
//
//  Created by Rizal on 12/12/22.
//

import SwiftUI

struct TransitionTestView: View {
    // Mark: Properties
    @State private var isShowing: Bool = false
    
    
    // Mark: Body
    var body: some View {
        
        VStack {
            if isShowing {
                Image("charts")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .cornerRadius(10)
                    .transition(.offsetScaleOpacity)
                Text("Image 1")
                
            } else {
                Image("navigation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .cornerRadius(10)
                    //.transition(.scale(scale:0, anchor: .bottomTrailing))
                    .transition(.scaleAndOffset)
                Text("Image 2")
            }
            
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                isShowing.toggle()
            }

        }
    }
}

// Mark: View
struct TransitionTestView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionTestView()
    }
}

// Mark: Extension
extension AnyTransition {
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x:-500, y: 0).combined(with: .scale).combined(with: .opacity)
    }
    
    static var scaleAndOffset: AnyTransition {
        AnyTransition.asymmetric(insertion: .scale(scale: 0, anchor: .center), removal: .offset(x: -500, y: 0).combined(with: .scale).combined(with: .opacity))
    }
}
