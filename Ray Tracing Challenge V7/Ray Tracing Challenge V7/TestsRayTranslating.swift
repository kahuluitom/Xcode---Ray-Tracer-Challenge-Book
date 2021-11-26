//
//  TestsRayTranslating.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation

extension Ray {
    
    func TranslateARay() -> String {
        var result = ""
        let ray = Ray(origin: Vector4.point(x: 1, y: 2, z: 3), direction: Vector4.vector(x: 0, y: 1, z: 0))
        let matTranslate = Matrix4.translation(x: 3, y: 4, z: 5)
        let ray2 = ray.transform(mat: matTranslate)
        
        if ray2.origin == Vector4.point(x: 4, y: 6, z: 8) && ray.direction == Vector4.vector(x: 0, y: 1, z: 0) {
            result +=  "Translate A Ray Passed\n"
        } else {
            result +=  "Translate A Ray FAILED\n"
        }
        
        return result
    }
    
    func ScaleARay() -> String {
        var result = ""
        let ray = Ray(origin: Vector4.point(x: 1, y: 2, z: 3), direction: Vector4.vector(x: 0, y: 1, z: 0))
        let matScale = Matrix4.scale(x: 2, y: 3, z: 4)
        let ray2 = ray.transform(mat: matScale)
        
        if ray2.origin == Vector4.point(x: 2, y: 6, z: 12) && ray2.direction == Vector4.vector(x: 0, y: 3, z: 0) {
            result +=  "Scale A Ray Passed\n"
        } else {
            result +=  "Scale A Ray FAILED\n"
        }
        
        return result
    }
    
}
