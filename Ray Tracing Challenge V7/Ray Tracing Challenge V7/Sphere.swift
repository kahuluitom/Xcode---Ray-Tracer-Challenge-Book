//
//  Sphere.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation

struct Sphere {
    let transform: Matrix4
    let inverseTransform: Matrix4
    let transposedInverseTransform: Matrix4
    let material: Material

    init(trans: Matrix4, aMaterial: Material) {
        transform = trans
        inverseTransform = trans.inverse!
        transposedInverseTransform = inverseTransform.transposed
        material = aMaterial
    }
    
    init () {
        transform = Matrix4.identity
        inverseTransform = transform.inverse!
        transposedInverseTransform = inverseTransform.transposed
        material = Material()
    }
    
    func transform(mat: Matrix4) -> Sphere {
        return Sphere(trans: mat, aMaterial: Material())
    }
    
    static func hit(inter1: Intersection?, inter2: Intersection?) -> Bool {
        if inter1?.time == Double.infinity || inter2?.time == Double.infinity {
            return false
        }
        
        return true
    }
    
    
    static func intersects(sphere: Sphere, ray: Ray) -> (Intersection?, Intersection?) {
        let tempRay = ray.transform(mat: sphere.inverseTransform)
        let sphereToRay = tempRay.origin - Vector4.point(x: 0, y: 0, z: 0)
        let a = Vector4.Dot(vec1: tempRay.direction, vec2: tempRay.direction)
        let b = 2 * Vector4.Dot(vec1: tempRay.direction, vec2: sphereToRay)
        let c = Vector4.Dot(vec1: sphereToRay, vec2: sphereToRay) - 1.0
        
        let discriminant = b * b - 4 * a * c
        
        if discriminant < 0 {
            return (Intersection.NilIntersection(), Intersection.NilIntersection())
        }
        
        let time1  = (-b - sqrt(discriminant)) / (2 * a)
        let time2 = (-b + sqrt(discriminant)) / (2 * a)
        let intersection1 = Intersection(time: time1, obj: sphere)
        let intersection2 = Intersection(time: time2, obj: sphere)
        
        return (intersection1, intersection2)
    }
    
    static func hit(inter1: Intersection, inter2: Intersection) -> Intersection {
        var intersectionArray = [Intersection]()
        intersectionArray.append(inter1)
        intersectionArray.append(inter2)
        
        if inter1.time < 0 && inter2.time < 0 {
            return Intersection.NilIntersection()
        } else {
            
        intersectionArray.sort {
            ($0.time) < ($1.time)
        }
            
        return intersectionArray[0]
        }
    }
    
    static func normalAt(sph: Sphere, point: Vector4) -> Vector4 {
        let spherePoint = sph.inverseTransform * point
        let sphereNormal = spherePoint - Vector4.point(x: 0, y: 0, z: 0)
        var worldNormal = sph.transposedInverseTransform * sphereNormal
        worldNormal.w = 0.0
        
        return worldNormal.normalize
    }
    
}
