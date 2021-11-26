//
//  TestsRedSphere.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation
import AppKit
import SwiftUI

extension Ray {
    
    func CastRedShadowSphere() -> NSImage {
        let canvasPixels = 100
        let canvas = CanvasFrameBuffer(width: canvasPixels, height: canvasPixels)
        let RayOrigin = Vector4.point(x: 0, y: 0, z: -5)
        let wallZ = 10
        let wallSize = 7.0
        let pixelSize = wallSize / Double(canvasPixels)
        let halfWall = wallSize / 2
        let aColor = Color.red
        let shape = Sphere()
        
        for y in 0..<canvasPixels {
            let worldY = halfWall - pixelSize * Double(y)
            for x in 0..<canvasPixels {
                let worldX = -halfWall + pixelSize * Double(x)
                let position = Vector4.point(x: worldX, y: worldY, z: Double(wallZ))
                let normal = position - RayOrigin
                let normal2 = normal.normalize
                let ray = Ray(origin: RayOrigin, direction: normal2)
                let xs = Sphere.intersects(sphere: shape, ray: ray)
                
                if Sphere.hit(inter1: xs.0, inter2: xs.1) {
                    canvas.setPixel(x: x, y: y, color: aColor)
                }
            }
        }
        return canvas.nsimage
    }
    
    func CastRedShadowSphereShrinkY() -> NSImage {
        let canvasPixels = 100
        let canvas = CanvasFrameBuffer(width: canvasPixels, height: canvasPixels)
        let RayOrigin = Vector4.point(x: 0, y: 0, z: -5)
        let wallZ = 10
        let wallSize = 7.0
        let pixelSize = wallSize / Double(canvasPixels)
        let halfWall = wallSize / 2
        let aColor = Color.red
        let shape = Sphere()
        let matScale = Matrix4.scale(x: 1.0, y: 0.5, z: 1.0)
        let shape2 = shape.transform(mat: matScale)
        
        for y in 0..<canvasPixels {
            let worldY = halfWall - pixelSize * Double(y)
            for x in 0..<canvasPixels {
                let worldX = -halfWall + pixelSize * Double(x)
                let position = Vector4.point(x: worldX, y: worldY, z: Double(wallZ))
                let normal = position - RayOrigin
                let normal2 = normal.normalize
                let ray = Ray(origin: RayOrigin, direction: normal2)
                let xs = Sphere.intersects(sphere: shape2, ray: ray)
                
                if Sphere.hit(inter1: xs.0, inter2: xs.1) {
                    canvas.setPixel(x: x, y: y, color: aColor)
                }
            }
        }
        return canvas.nsimage
    }
    
    func CastRedShadowSphereShrinkYRotate() -> NSImage {
        let canvasPixels = 100
        let canvas = CanvasFrameBuffer(width: canvasPixels, height: canvasPixels)
        let RayOrigin = Vector4.point(x: 0, y: 0, z: -5)
        let wallZ = 10
        let wallSize = 7.0
        let pixelSize = wallSize / Double(canvasPixels)
        let halfWall = wallSize / 2
        let aColor = Color.red
        let shape = Sphere()
        let matShrinkRotate = Matrix4.rotation(angleRadians: Double.pi / 4.0, v: Vector4.vector(x: 0, y: 0, z: 1)) *
        Matrix4.scale(x: 0.5, y: 1, z: 1)
        let shape2 = shape.transform(mat: matShrinkRotate)
        
        for y in 0..<canvasPixels {
            let worldY = halfWall - pixelSize * Double(y)
            for x in 0..<canvasPixels {
                let worldX = -halfWall + pixelSize * Double(x)
                let position = Vector4.point(x: worldX, y: worldY, z: Double(wallZ))
                let normal = position - RayOrigin
                let normal2 = normal.normalize
                let ray = Ray(origin: RayOrigin, direction: normal2)
                let xs = Sphere.intersects(sphere: shape2, ray: ray)
                
                if Sphere.hit(inter1: xs.0, inter2: xs.1) {
                    canvas.setPixel(x: x, y: y, color: aColor)
                }
            }
        }
        return canvas.nsimage
    }
    
}
