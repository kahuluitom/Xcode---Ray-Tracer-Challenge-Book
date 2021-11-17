//
//  VectorTests.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

extension Vector4 {
    
    func CreateAPoint() -> String {
        var result = ""
        let a = Vector4.point(x: 4.3, y: -4.2, z: 3.1)
        
        if a.x == 4.3 && a.y == -4.2 && a.z == 3.1 && a.w == 1.0 {
            result += "Create A Point: Passed\n"
        } else {
            result += "Create A Point: FAILED\n"
        }
        
        return result
    }
    
    func CreateAVector() -> String {
        var result = ""
        let a = Vector4.vector(x: 4.3, y: -4.2, z: 3.1)
        
        if a.x == 4.3 && a.y == -4.2 && a.z == 3.1 && a.w == 0.0 {
            result += "Create A Vector: Passed\n"
        } else {
            result += "Create A Vector: FAILED\n"
        }
        
        return result
    }
    
    func AddingTwoVectors() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 3.0, y: -2.0, z: 5)
        let vec2 = Vector4.point(x: -2, y: 3.0, z: 1.0)
        let a = vec1 + vec2
        
        if a.x == 1.0 && a.y == 1.0 && a.z == 6.0 && a.w == 1.0 {
            result += "Adding Two Vectors: Passed\n"
        } else {
            result += "Adding Two Vectors: FAILED\n"
        }
        
        return result
    }
    
    func SubtractingTwoPoints() -> String {
        var result = ""
        let vec1 = Vector4.point(x: 3, y: 2, z: 1)
        let vec2 = Vector4.point(x: 5, y: 6, z: 7)
        let a = vec1 - vec2
        
        if a.x == -2.0 && a.y == -4.0 && a.z == -6.0 {
            result += "Subtracting Two Points: Passed\n"
        } else {
            result += "Subtracting Two Points: FAILED\n"
        }
        
        return result
    }
    
    func SubtractVectorFromPoint() -> String {
        var result = ""
        let vec1 = Vector4.point(x: 3, y: 2, z: 1)
        let vec2 = Vector4.vector(x: 5, y: 6, z: 7)
        let a = vec1 - vec2
        
        if a.x == -2.0 && a.y == -4.0 && a.z == -6.0 {
            result += "Subtract Vector From Point: Passed\n"
        } else {
            result += "Subtract Vector From Point: FAILED\n"
        }
        
        return result
    }
    
    func SubtractingTwoVectors() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 3, y: 2, z: 1)
        let vec2 = Vector4.vector(x: 5, y: 6, z: 7)
        let a = vec1 - vec2
        
        if a.x == -2.0 && a.y == -4.0 && a.z == -6.0 {
            result += "Subtracting Two Vectors: Passed\n"
        } else {
            result += "Subtracting Two Vectors: FAILED\n"
        }
        
        return result
    }
    
    func SubtractingVectorFromZeroVector() -> String {
        var result = ""
        let vec1 = Vector4.zero()
        let vec2 = Vector4.vector(x: 1, y: -2, z: 3)
        let a = vec1 - vec2
        
        if a.x == -1.0 && a.y == 2.0 && a.z == -3.0 {
            result += "Subtracting Vector From Zero Vector: Passed\n"
        } else {
            result += "Subtracting Vector From Zero Vector: FAILED\n"
        }
        
        return result
    }
    
    func NegatingAVector() -> String {
        var result = ""
        let vec1 = Vector4(x: 1, y: -2, z: 3, w: -4)
        let a = Vector4.negate(vec: vec1)
        
        if a.x == -1.0 && a.y == 2.0 && a.z == -3.0 && a.w == 4 {
            result += "Negating A Vector: Passed\n"
        } else {
            result += "Negating A Vector: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyVectorByScaler() -> String {
        var result = ""
        let vec1 = Vector4(x: 1, y: -2, z: 3, w: -4)
        let a = vec1 * 3.5
        
        if a.x == 3.5 && a.y == -7 && a.z == 10.5 && a.w == -14 {
            result += "Multiply Vector By Scaler: Passed\n"
        } else {
            result += "Multiply Vector By Scaler: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyVectorByFraction() -> String {
        var result = ""
        let vec1 = Vector4(x: 1, y: -2, z: 3, w: -4)
        let a = vec1 * 0.5
        
        if a.x == 0.5 && a.y == -1 && a.z == 1.5 && a.w == -2 {
            result += "Multiply Vector By Fraction: Passed\n"
        } else {
            result += "Multiply Vector By Fraction: FAILED\n"
        }
        
        return result
    }
    
    func DivideVectorByScaler() -> String {
        var result = ""
        let vec1 = Vector4(x: 1, y: -2, z: 3, w: -4)
        let a = vec1 / 2
        
        if a.x == 0.5 && a.y == -1 && a.z == 1.5 && a.w == -2 {
            result += "Divide Vector By Scaler: Passed\n"
        } else {
            result += "Divide Vector By Scaler: FAILED\n"
        }
        
        return result
    }
    
    func MagnitudeOfVector() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 1, y: 0, z: 0)
        var magnitude = vec1.magnitude
        if magnitude == 1 {
            result += "Magnitude Of Vector1: Passed\n"
        } else {
            result += "Magnitude Of Vector1: FAILED\n"
        }
        
        let vec2 = Vector4.vector(x: 0, y: 1, z: 0)
        magnitude = vec2.magnitude
        if magnitude == 1 {
            result += "Magnitude Of Vector2: Passed\n"
        } else {
            result += "Magnitude Of Vector2: FAILED\n"
        }
        
        let vec3 = Vector4.vector(x: 0, y: 0, z: 1)
        magnitude = vec3.magnitude
        if magnitude == 1 {
            result += "Magnitude Of Vector3: Passed\n"
        } else {
            result += "Magnitude Of Vector3: FAILED\n"
        }
        
        let vec4 = Vector4.vector(x: -1, y: -2, z: -3)
        magnitude = vec4.magnitude
        if magnitude.roughlyEqual(sqrt(14)) {
            result += "Magnitude Of Vector4: Passed\n"
        } else {
            result += "Magnitude Of Vector4: FAILED\n"
        }
        
        return result
    }
    
    func NormalizeVector() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 4, y: 0, z: 0)
        let a = vec1.normalize
        if a.x == 1.0 && a.y == 0 && a.z == 0 {
            result += "Normalize Vector1: Passed\n"
        } else {
            result += "Normalize Vector1: FAILED\n"
        }
        
        let vec2 = Vector4.vector(x: 1, y: 2, z: 3)
        let b = vec2.normalize
        if b.x.roughlyEqual(0.2672612419124244) && b.y.roughlyEqual(0.5345224838248488) && b.z.roughlyEqual(0.8017837257372732) {
            result += "Normalize Vector2: Passed\n"
        } else {
            result += "Normalize Vector2: FAILED\n"
        }
        
        return result
    }
    
    func MagnitudeNormalizedVector() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 1, y: 2, z: 3)
        let vec2 = vec1.normalize
        let a = vec2.magnitude
        
        if a == 1.0 {
            result += "Magnitude Normalized Vector: Passed\n"
        } else {
            result += "Magnitude Normalized Vector: FAILED\n"
        }
        
        return result
    }
    
    func DotProductTwoVectors() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 1, y: 2, z: 3)
        let vec2 = Vector4.vector(x: 2, y: 3, z: 4)
        let a = vec1.dotProduct(vec2)
        
        if a == 20.0 {
            result += "Dot Product Two Vectors: Passed\n"
        } else {
            result += "Dot Product Two Vectors: FAILED\n"
        }
        
        return result
    }
    
    func CrossProductTwoVectors() -> String {
        var result = ""
        let vec1 = Vector4.vector(x: 1, y: 2, z: 3)
        let vec2 = Vector4.vector(x: 2, y: 3, z: 4)
        let a = vec1.crossProduct(vec2)
        if a.x == -1 && a.y == 2 && a.z == -1 {
            result += "Cross Product Two Vectors1: Passed\n"
        } else {
            result += "Cross Product Two Vectors1: FAILED\n"
        }
        
        let b = vec2.crossProduct(vec1)
        if b.x == 1 && b.y == -2 && b.z == 1 {
            result += "Cross Product Two Vectors2: Passed\n"
        } else {
            result += "Cross Product Two Vectors2: FAILED\n"
        }
        
        return result
    }
    
}
