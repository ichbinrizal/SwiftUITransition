//
//  cardsView.swift
//  SwiftUITransition
//
//  Created by Rizal on 12/12/22.
//

import SwiftUI

struct cardsView: View {
    // Mark: Properties
    @State var CardViews = cardViewList
    
    // Mark: Body
    var body: some View {
        VStack {
            ForEach (CardViews) { cardListViews in
                VStack (alignment: .leading, spacing: 5) {
                    Image(cardListViews.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 380, height: 370)
                        .transition(.scaleAndOffset)
                    Text(cardListViews.category)
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .padding([.top, .leading])
                    Text(cardListViews.heading)
                        .font(.system(size: 24, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    Text(cardListViews.author)
                        .font(.system(size: 14, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading)
                    Text(cardListViews.excerpt)
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(.leading)
                    
                } //: VStack
                .padding(4)
                .cornerRadius(10)
            }
            
        } //: VStack
    }
}


// Mark: View
struct cardsView_Previews: PreviewProvider {
    static var previews: some View {
        cardsView()
    }
}
