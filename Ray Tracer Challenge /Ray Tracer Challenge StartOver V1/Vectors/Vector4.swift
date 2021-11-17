//
//  Vector4.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

/// Represents a 4D vector.
struct Vector4: Equatable {
    var x = 0.0
    var y = 0.0
    var z = 0.0
    var w = 0.0
    
    func dotProduct(_ v: Vector4) -> Double {
        x*v.x + y*v.y + z*v.z + w*v.w
    }
    
    func crossProduct(_ v: Vector4) -> Vector4 {
        .vector(x: y*v.z - z*v.y,
                y: z*v.x - x*v.z,
                z: x*v.y - y*v.x)
    }
    
    var length: Double {
        sqrt(dotProduct(self))
    }
    
    var magnitude: Double {
        sqrt(dotProduct(self))
    }
    
    var normalize: Vector4 {
        let len = length
        if len <= 0 {
            fatalError("Cannot normalize a zero length vector.")
        }
        return Vector4(x: x / len, y: y / len, z: z / len, w: w / len)
    }
    
    func reflect(n: Vector4) -> Vector4 {
        self - n * 2 * self.dotProduct(n)
    }
    
    static func point(x: Double, y: Double, z: Double) -> Vector4 {
        Vector4(x: x, y: y, z: z, w: 1)
    }
    
    static func vector(x: Double, y: Double, z: Double) -> Vector4 {
        Vector4(x: x, y: y, z: z, w: 0)
    }
    
    static func zero() -> Vector4 {
        Vector4()
    }
    
    static func negate(vec: Vector4) -> Vector4 {
        Vector4(x: -vec.x, y: -vec.y, z: -vec.z, w: -vec.w)
    }
}

func == (left: Vector4, right: Vector4) -> Bool {
    return left.x.roughlyEqual(right.x) && left.y.roughlyEqual(right.y) && left.z.roughlyEqual(right.z) && left.w.roughlyEqual(right.w)
}

func != (left: Vector4, right: Vector4) -> Bool {
    !(left == right)
}

func + (left: Vector4, right: Vector4) -> Vector4 {
    Vector4(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z, w: left.w + right.w)
}

func - (left: Vector4, right: Vector4) -> Vector4 {
    Vector4(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z, w: left.w - right.w)
}

func * (left: Vector4, right: Vector4) -> Vector4 {
    Vector4(x: left.x * right.x, y: left.y * right.y, z: left.z * right.z, w: left.w * right.w)
}

func * (left: Vector4, scale: Double) -> Vector4 {
    Vector4(x: left.x * scale, y: left.y * scale, z: left.z * scale, w: left.w * scale)
}

func / (left: Vector4, scale: Double) -> Vector4 {
    Vector4(x: left.x / scale, y: left.y / scale, z: left.z / scale, w: left.w / scale)
}
