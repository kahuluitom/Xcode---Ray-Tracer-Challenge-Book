//
//  TestSIntersection.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/24/21.
//

import Foundation

extension Sphere {
    
    func RaySphereTangent() -> String {
        // this test returns two Intersections with both of them having the same time
        // in other words it intersects one point twice.
        var result = "Ray Sphere Tangent - "
        let ray = Ray(origin: Vector4.point(x: 0, y: -1, z: -5), direction: Vector4.vector(x: 0, y: 0, z: 1))
        let s = Sphere()
        let xs = Sphere.intersects(sphere: s, ray: ray)
        result += Intersection.compare(intersection1: xs.0!, intersection2: xs.1!)
        return result
    }
    
    func RaySphereMisses() -> String {
        // ray misses sphere
        var result = "Ray Sphere Misses - "
        let ray = Ray(origin: Vector4.point(x: 0, y: 2, z: -5), direction: Vector4.vector(x: 0, y: 0, z: 1))
        let s = Sphere()
        let xs = Sphere.intersects(sphere: s, ray: ray)
        result += Intersection.compare(intersection1: xs.0!, intersection2: xs.1!)
        return result
    }
    
    func RayOriginatesInsideSphere() -> String {
        // ray origin inside the sphere intersects once going out and once going the other way.
        // assumin the ray projects both ways from origin.
        var result = "Ray Originates Inside Sphere - "
        let ray = Ray(origin: Vector4.point(x: 0, y: 0, z: 0), direction: Vector4.vector(x: 0, y: 0, z: 1))
        let s = Sphere()
        let xs = Sphere.intersects(sphere: s, ray: ray)
        result += Intersection.compare(intersection1: xs.0!, intersection2: xs.1!)
        return result
    }
    
    func RayOriginatesPastSphere() -> String {
        // the sphere is behind the origin so the two intersection points/times are negative numbers
        var result = "Ray Originates Past Sphere - "
        let ray = Ray(origin: Vector4.point(x: 0, y: 0, z: 5), direction: Vector4.vector(x: 0, y: 0, z: 1))
        let s = Sphere()
        let xs = Sphere.intersects(sphere: s, ray: ray)
        result += Intersection.compare(intersection1: xs.0!, intersection2: xs.1!)
        return result
    }
    
    func IdentifyingHits() -> String {
        var result = "Identifying Hits - All Positive Time's "
        let s = Sphere()
        let i1 = Intersection(time: 1, obj: s)
        let i2 = Intersection(time: 2, obj: s)
        let xs = Sphere.hit(inter1: i1, inter2: i2)
        if xs == i1 {
            result += "Passed"
        } else {
            result += "FAILED"
        }
        
        return result
    }
    
    func IdentifyingHits2() -> String {
        var result = "Identifying Hits - Some Negative Time's "
        let s = Sphere()
        let i1 = Intersection(time: -1, obj: s)
        let i2 = Intersection(time: 1, obj: s)
        let xs = Sphere.hit(inter1: i2, inter2: i1)
        if xs == i1 {
            result += "Passed"
        } else {
            result += "FAILED"
        }
        
        return result
    }
    
    func IdentifyingHits3() -> String {
        var result = "Identifying Hits - Both Negative Time's "
        let s = Sphere()
        let i1 = Intersection(time: -2, obj: s)
        let i2 = Intersection(time: -1, obj: s)
        let xs = Sphere.hit(inter1: i2, inter2: i1)
        if xs != i1 || xs != i2 {
            result += "Passed"
        } else {
            result += "FAILED"
        }
        
        return result
    }
}
