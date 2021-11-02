//
//  ContentView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 01/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        CardPackView(settings: CardPackSettings(size: CGSize(width: UIScreen.main.bounds.size.width  / 2,
                                                             height: UIScreen.main.bounds.size.height / 2),
                                                images: ["ethan"],
                                                outlineColor: Color.blue,
                                                isHelical: false))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
