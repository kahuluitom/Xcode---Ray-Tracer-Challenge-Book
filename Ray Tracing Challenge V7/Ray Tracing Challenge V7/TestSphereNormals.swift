//
//  TestSphereNormals.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation


extension Sphere {
    
    func TestSphereNormalX() -> String {
        var result = "Page 78 - "
        let s = Sphere()
        let n = Sphere.normalAt(sph: s, point: Vector4.point(x: 1, y: 0, z: 0))
        
        if n == Vector4.vector(x: 1, y: 0, z: 0) {
            result += "Test Sphere Normal X Axis Passed"
        } else {
            result += "Test Sphere Normal X AxisFAILED"
        }
        
        return result
    }
    
    func TestSphereNormalY() -> String {
        var result = ""
        let s = Sphere()
        let n = Sphere.normalAt(sph: s, point: Vector4.point(x: 0, y: 1, z: 0))
        
        if n == Vector4.vector(x: 0, y: 1, z: 0) {
            result += "Test Sphere Normal Y Axis Passed"
        } else {
            result += "Test Sphere Normal Y Axis FAILED"
        }
        
        return result
    }
    
    func TestSphereNormalZ() -> String {
        var result = ""
        let s = Sphere()
        let n = Sphere.normalAt(sph: s, point: Vector4.point(x: 0, y: 0, z: 1))
        
        if n == Vector4.vector(x: 0, y: 0, z: 1) {
            result += "Test Sphere Normal Z Axis Passed"
        } else {
            result += "Test Sphere Normal Z Axis FAILED"
        }
        
        return result
    }
    
    func TestSphereNormalNonAxial() -> String {
        var result = ""
        let s = Sphere()
        let temp = sqrt(3) / 3.0
        let n = Sphere.normalAt(sph: s, point: Vector4.point(x: temp, y: temp, z: temp))
        
        if n == Vector4.vector(x: temp, y: temp, z: temp) {
            result += "Test Sphere Normal Non-Axial Point Passed"
        } else {
            result += "Test Sphere Normal Non-Axial Point FAILED"
        }
        
        return result
    }
    
    func TestTranslatedSphereNormal() -> String {
        var result = ""
        let s = Sphere()
        let matTrans = Matrix4.translation(x: 0, y: 1, z: 0)
        let s1 = s.transform(mat: matTrans)
        let n = Sphere.normalAt(sph: s1, point: Vector4.point(x: 0, y: 1.70711, z: -0.70711))
        
        if n.x.roughlyEqual(0.0) && n.y.roughlyEqual(0.7071067811865475) && n.z.roughlyEqual(-0.7071067811865476) {
            result += "Test Translated Sphere Normal Passed"
        } else {
            result += "Test Translated Sphere Normal FAILED"
        }
        
        return result
    }
}
