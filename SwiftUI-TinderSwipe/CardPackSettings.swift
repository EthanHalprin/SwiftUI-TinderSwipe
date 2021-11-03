//
//  CardPackSettings.swift
//  SwiftUI-TinderSwipe
//
//  Created by Ethan on 02/11/2021.
//

import Foundation
import SwiftUI

struct ImageInfo: Hashable {
    var serialNumber = UUID()
    var name: String
    var drag: CGSize
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(serialNumber)
    }
}

struct CardPackSettings {
    var size: CGSize
    var imageInfos: [ImageInfo]
    var outlineColor: Color
    var isHelical: Bool
}
