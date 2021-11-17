//
//  NSImageExtension.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import SwiftUI

typealias UIImage = NSImage

extension Image {
  init(uiImage: UIImage) {
        self.init(nsImage: uiImage)
    }
}
