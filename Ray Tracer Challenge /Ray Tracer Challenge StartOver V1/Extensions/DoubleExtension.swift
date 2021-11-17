//
//  DoubleExtension.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

extension Double {
    func clamped(min: Double = 0.0, max: Double = 1.0) -> Double {
        var result = self
        if result < min {
            result = min
        } else if result > max {
            result = max
        }
        return result
    }

    func roughlyEqual(_ other: Double) -> Bool {
        let e = 0.00000001
        let diff = self - other
        return diff > -e && diff < e
    }
}
