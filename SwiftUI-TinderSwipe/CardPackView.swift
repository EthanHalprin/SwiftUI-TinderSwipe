//
//  CardPackView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 02/11/2021.
//

import SwiftUI


struct CardPackView: View {
    
    var settings: CardPackSettings
    @State private var drag = CGSize(width: 15.0, height: 15.0)
    
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
                .offset(drag)
                .gesture(DragGesture()
                            .onChanged { self.drag = $0.translation }
                            .onEnded   { _ in drag = CGSize(width: 15.0, height: 15.0) } )
                .animation(Animation.default , value: self.drag)
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
