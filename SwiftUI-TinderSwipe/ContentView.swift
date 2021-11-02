//
//  ContentView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 01/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let size = CGSize(width : UIScreen.main.bounds.size.width  / 2.0,
                      height: UIScreen.main.bounds.size.height / 2.0)
    
    var body: some View {
        if #available(iOS 15.0, *) {
            CardPackView(settings: CardPackSettings(size: CGSize(width: size.width, height: size.height),
                                                    images: ["ethan"],
                                                    outlineColor: Color.yellow,
                                                    isHelical: false))
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
