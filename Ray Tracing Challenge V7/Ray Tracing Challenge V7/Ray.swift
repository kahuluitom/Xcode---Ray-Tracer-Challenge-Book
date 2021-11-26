//
//  Ray.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation

struct Ray {
    let origin: Vector4
    let direction: Vector4
    
    init(origin: Vector4, direction: Vector4) {
        self.origin = origin
        self.direction = direction
    }
    
    init() {
        origin = Vector4.point(x: 0, y: 0, z: 0)
        direction = Vector4.vector(x: 0, y: 0, z: 0)
    }

    func position(time: Double) -> Vector4 {
        origin + direction * time
    }

    func transform(mat: Matrix4) -> Ray {
        Ray(origin: mat * origin, direction: mat * direction)
    }

}
