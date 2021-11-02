//
//  CardPackView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 02/11/2021.
//

import SwiftUI


struct CardPackView: View {
    
    var settings: CardPackSettings
    
    var body: some View {
        ZStack {
            CardView(width      : settings.size.width,
                     height     : settings.size.height,
                     imageName  : settings.images[0],
                     borderColor: settings.outlineColor)
                .offset(x: 5, y: 5)

            CardView(width      : settings.size.width,
                     height     : settings.size.height,
                     imageName  : settings.images[0],
                     borderColor: settings.outlineColor)
                .offset(x: 10, y: 10)

            CardView(width      : settings.size.width,
                     height     : settings.size.height,
                     imageName  : settings.images[0],
                     borderColor: settings.outlineColor)
                .offset(x: 15, y: 15)
        }
    }
}

struct CardPackView_Previews: PreviewProvider {
    static var previews: some View {
        CardPackView(settings: CardPackSettings(size: CGSize(width: 200, height: 400),
                                                images: ["ethan"],
                                                outlineColor: Color.blue,
                                                isHelical: false))
            .preferredColorScheme(.dark)
    }
}
