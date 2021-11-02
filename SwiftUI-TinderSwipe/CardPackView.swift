//
//  CardPackView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 02/11/2021.
//

import SwiftUI


@available(iOS 15.0, *)
struct CardPackView: View {
    var settings: CardPackSettings
    @State private var drag1 = CGSize(width: 5.0,  height: 5.0)
    @State private var drag2 = CGSize(width: 10.0, height: 10.0)
    @State private var drag3 = CGSize(width: 15.0, height: 15.0)
    @State private var drag4 = CGSize(width: 20.0, height: 20.0)


    var body: some View {
        ZStack {
            DraggableCardView(settings: settings, drag: $drag1)
            DraggableCardView(settings: settings, drag: $drag2)
            DraggableCardView(settings: settings, drag: $drag3)
            DraggableCardView(settings: settings, drag: $drag4)
        }
    }
}

struct CardPackView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            CardPackView(settings: CardPackSettings(size: CGSize(width: 200, height: 400),
                                                    images: ["ethan"],
                                                    outlineColor: Color.blue,
                                                    isHelical: false))
                .preferredColorScheme(.dark)
        } else {
            // Fallback on earlier versions
        }
    }
}
