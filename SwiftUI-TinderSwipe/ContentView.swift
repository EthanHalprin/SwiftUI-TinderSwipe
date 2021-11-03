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
                                                    imageInfos: [ImageInfo(name: "IMG_0006", drag: CGSize(width: 5.0,  height: 5.0 )),
                                                                 ImageInfo(name: "IMG_0007", drag: CGSize(width: 10.0, height: 10.0)),
                                                                 ImageInfo(name: "IMG_0008", drag: CGSize(width: 15.0, height: 15.0)),
                                                                 ImageInfo(name: "IMG_0009", drag: CGSize(width: 20.0, height: 20.0))],
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
