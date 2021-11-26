//
//  TestSphereTransforms.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation


extension Sphere {
    
    func SphereChangeTransformation() -> String {
        var result = ""
        let s = Sphere()
        let matTranslate = Matrix4.translation(x: 2, y: 3, z: 4)
        let s1 = s.transform(mat: matTranslate)
        
        if s1.transform == matTranslate {
            result +=  "Sphere Change Transformation Passed\n"
        } else {
            result +=  "Sphere Change Transformation FAILED\n"
        }
        
        return result
    }
    
    func IntersectAScaledSphere() -> String {
        var result = ""
        let ray = Ray(origin: Vector4.point(x: 0, y: 0, z: -5), direction: Vector4.vector(x: 0, y: 0, z: 1))
        let sp = Sphere()
        let matScale = Matrix4.scale(x: 2, y: 2, z: 2)
        let sp2 = sp.transform(mat: matScale)
        let xs = Sphere.intersects(sphere: sp2, ray: ray)
        
        if xs.0?.time == 3 && xs.1?.time == 7 {
            result +=  "Ray Intersect A Scaled Sphere Passed\n"
        } else {
            result +=  "Ray Intersect A Scaled Sphere FAILED\n"
        }
        
        return result
    }
}
