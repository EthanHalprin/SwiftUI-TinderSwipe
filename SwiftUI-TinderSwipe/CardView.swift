//
//  CardView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 01/11/2021.
//

import SwiftUI


struct CardView: View {
    
    var imageInfo: ImageInfo
    var outlineColor: Color
    var size: CGSize
    fileprivate let cornerRadius = 7.0
    @State var drag: CGSize
    @State private var isShowing = true
    var willDisappearClosure: () -> Void

    
    var body: some View {
        if isShowing {
            Image(imageInfo.name)
                .resizable()
                .scaledToFit()
                .border(outlineColor, width: 4)
                .cornerRadius(cornerRadius)
                .frame(width: size.width, height: size.height)
                .offset(drag)
                .gesture(DragGesture()
                            .onChanged { self.handleDrag($0) }
                            .onEnded   { self.handleEnd($0)  })
        }
    }
}

extension CardView {
    
    func handleDrag(_ dragGesture: DragGesture.Value) {
        print("Drag (\(dragGesture.translation.width) ,\(dragGesture.translation.height))")
        if dragGesture.translation.height > 0 {
            self.drag = dragGesture.translation
        }
    }
    
    func handleEnd(_ dragGesture: DragGesture.Value) {
        let totalXDrag = dragGesture.translation.width > 0 ? dragGesture.translation.width : dragGesture.translation.width * (-1.0)
        if totalXDrag >= UIScreen.main.bounds.width / 2.0 - 40.0 {
            print("Card Disappearing...")
            willDisappearClosure()
            isShowing = false
        } else {
            withAnimation { drag = CGSize(width: 15.0, height: 15.0) }
        }
    }
}
