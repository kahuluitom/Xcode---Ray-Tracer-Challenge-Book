//
//  CanvasFrameBuffer.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation
import SwiftUI

class CanvasFrameBuffer {
    private let _bytesPerPixel = 4
    private let _width: Int
    private let _height: Int
    private var _bytes: [UInt8]
    
    init(width: Int, height: Int) {
        _width = width
        _height = height
        _bytes = [UInt8](repeating: 0, count: width * height * _bytesPerPixel)
    }
    
    init() {
        _width = 1
        _height = 1
        _bytes = [UInt8](repeating: 0, count: _width * _height * _bytesPerPixel)
    }
    
    var image: CGImage {
        let data = CFDataCreate(nil, _bytes, _bytes.count)
        let provider = CGDataProvider(data: data!)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipLast.rawValue)
        return CGImage(width: _width,
                       height: _height,
                       bitsPerComponent: 8,
                       bitsPerPixel: _bytesPerPixel * 8,
                       bytesPerRow: _bytesPerPixel * _width,
                       space: colorSpace,
                       bitmapInfo: bitmapInfo,
                       provider: provider!,
                       decode: nil,
                       shouldInterpolate: false,
                       intent: .defaultIntent)!
    }
    
    var nsimage: NSImage {
        return NSImage(cgImage: self.image, size: CGSize.zero)
    }
    
//    var theImage: UIImage {
//        return UIImage(cgImage: self.image, size: CGSize.zero)
//    }
    
    func setPixel(x: Int, y: Int, color: Color) {
        if y > self._height || y < 0 { return }
        if x > self._width || x < 0 { return }
        
        let index = (_width * y + x) * _bytesPerPixel
        let c = color.clamped
        _bytes[index+0] = UInt8(c.red * 255.0)
        _bytes[index+1] = UInt8(c.green * 255.0)
        _bytes[index+2] = UInt8(c.blue * 255.0)
        _bytes[index+3] = UInt8(c.alpha * 255.0)
    }
}
