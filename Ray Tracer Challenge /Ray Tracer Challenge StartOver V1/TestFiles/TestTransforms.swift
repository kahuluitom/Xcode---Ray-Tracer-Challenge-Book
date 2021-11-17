//
//  TestTransforms.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/17/21.
//

import Foundation

extension Matrix4 {
    
    func MultiplyByTranslation() -> String {
        var result = "Page 45 - "
        let transform = Matrix4.translation(x: 5, y: -3, z: 2)
        let p = Vector4.point(x: -3, y: 4, z: 5)
        let p1 = transform * p
        
        if p1.x == 2 && p1.y == 1 && p1.z == 7 {
            result += "Multiply By Translation: Passed\n"
        } else {
            result += "Multiply By Translation: FAILED\n"
        }
        
        return result
    }
    
    func MultiplyByInverseOfTranslation() -> String {
        var result = ""
        let transform = Matrix4.translation(x: 5, y: -3, z: 2)
        let inverse = transform.inverse
        let p = Vector4.point(x: -3, y: 4, z: 5)
        let p1 = inverse! * p
        
        if p1.x == -8 && p1.y == 7 && p1.z == 3 {
            result += "Multiply By Inverse Of Translation: Passed\n"
        } else {
            result += "Multiply By Inverse Of Translation: FAILED\n"
        }
        
        return result
    }
    
    func TranslationDoesNotEffectVectors() -> String {
        var result = ""
        let transform = Matrix4.translation(x: 5, y: -3, z: 2)
        let vec = Vector4.vector(x: -3, y: 4, z: 5)
        let vec1 = transform * vec
        
        if vec1 == vec {
            result += "Translation Does Not Effect Vectors: Passed\n"
        } else {
            result += "Translation Does Not Effect Vectors: FAILED\n"
        }
        
        return result
    }
    
    
}
