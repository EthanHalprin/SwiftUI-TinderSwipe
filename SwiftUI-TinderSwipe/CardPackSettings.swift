//
//  CardPackSettings.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 02/11/2021.
//

import Foundation
import SwiftUI


class CardPackSettings {
    var size: CGSize
    var imageInfos: [ImageInfo]
    var outlineColor: Color
    var isHelical: Bool
    
    init(size: CGSize, imageInfos: [ImageInfo], outlineColor: Color, isHelical: Bool) {
        self.size = size
        self.imageInfos = imageInfos
        self.outlineColor = outlineColor
        self.isHelical = isHelical
    }
}

class ImageInfo: Hashable {
    var serialNumber = UUID()
    var name: String
    var drag: CGSize
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(serialNumber)
    }
    
    init(name: String, drag: CGSize) {
        self.name = name
        self.drag = drag
    }
}

extension ImageInfo: Equatable {
    static func == (lhs: ImageInfo, rhs: ImageInfo) -> Bool {
        return lhs.serialNumber == rhs.serialNumber
    }    
}
