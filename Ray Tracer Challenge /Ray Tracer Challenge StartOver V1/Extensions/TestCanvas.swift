//
//  TestCanvas.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

extension CanvasFrameBuffer {
    
    func CreateACanvas() -> UIImage {
        let canvas = CanvasFrameBuffer(width: 10, height: 20)
        let red = Color.red
        
        canvas.setPixel(x: 2, y: 3, color: red)
        
        return canvas.theImage
    }
}
