//
//  CardView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 01/11/2021.
//

import SwiftUI

struct CardView: View {
    
    var width: CGFloat
    var height: CGFloat
    var imageName: String
    var borderColor: Color
    fileprivate let cornerRadius = 7.0

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .border(borderColor, width: 4)
            .cornerRadius(cornerRadius)
            .frame(width: width, height: height)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(width: 200,
                 height: 400,
                 imageName: "ethan",
                 borderColor: Color.green)
            .preferredColorScheme(.dark)
    }
}
