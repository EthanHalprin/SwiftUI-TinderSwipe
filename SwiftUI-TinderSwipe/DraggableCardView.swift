//
//  CardView.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 01/11/2021.
//

import SwiftUI

struct DraggableCardView: View {
    
    var size: CGSize
    var image: String
    var outlineColor: Color
    @State var drag: CGSize
    @State private var isShowing = true

    var body: some View {
        if isShowing {
            CardView(width      : size.width,
                     height     : size.height,
                     imageName  : image,
                     borderColor: outlineColor)
                .offset(drag)
                .gesture(
                    DragGesture()
                        .onChanged {
                            print("(\($0.translation.width) ,\($0.translation.height))")
                            if $0.translation.height > 0 {
                                self.drag = $0.translation
                            }
                        }
                        .onEnded {
                            let totalXDrag = $0.translation.width > 0 ? $0.translation.width : $0.translation.width * (-1.0)
                            if totalXDrag >= UIScreen.main.bounds.width / 2.0 - 40.0 {
                                print("DISPELL CARD !!!!!!!!!")
                                isShowing = false
                            } else {
                                withAnimation { drag = CGSize(width: 15.0, height: 15.0) }
                            }
                        }
                )
        }
    }
}


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
