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

    var body: some View {
        ZStack {
            ForEach(settings.imageInfos, id: \.self) { imageInfo in
                DraggableCardView(size: settings.size,
                                  image: imageInfo.name,
                                  outlineColor: Color.gray,
                                  drag: imageInfo.drag)
            }
        }
    }
}

struct CardPackView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            CardPackView(settings: CardPackSettings(size: CGSize(width: 200.0, height: 350.0),
                                                    imageInfos: [ImageInfo(name: "IMG_0006", drag: CGSize(width: 5.0,  height: 5.0 )),
                                                                 ImageInfo(name: "IMG_0007", drag: CGSize(width: 10.0, height: 10.0)),
                                                                 ImageInfo(name: "IMG_0008", drag: CGSize(width: 15.0, height: 15.0)),
                                                                 ImageInfo(name: "IMG_0009", drag: CGSize(width: 20.0, height: 20.0))],
                                                    outlineColor: Color.yellow,
                                                    isHelical: false))
                .preferredColorScheme(.dark)
        } else {
            // Fallback on earlier versions
        }
    }
}
