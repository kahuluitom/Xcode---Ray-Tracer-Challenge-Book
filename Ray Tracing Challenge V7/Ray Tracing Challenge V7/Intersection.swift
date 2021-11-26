//
//  Intersection.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/24/21.
//

import Foundation

struct Intersection: Equatable {
    let time: Double
    let obj: Sphere
    
    static func == (lhs: Intersection, rhs: Intersection) -> Bool {
        return lhs.time == rhs.time
    }
    
    static func NilIntersection() -> Intersection{
        return Intersection(time: Double.infinity, obj: Sphere())
    }
    
    static func compare(intersection1: Intersection, intersection2: Intersection) -> String {
        // this is for me -
        var result = ""
        if intersection1.time == intersection2.time {
            result = "These two intersections have the same time or intersection Point."
        }
        
        if intersection1.time == Double.infinity && intersection2.time == Double.infinity {
            result = "These two intersections have no intersection points - Ray missed."
        }
        
        if intersection1.time == -1.0 && intersection2.time == 1.0 {
            // this test assumes a sphere of radius 1 and the ray started at 0,0,0.
            // 1.0 is the distance from center to the right. -1.0 is from center going the opposite direction.
            result = "These two intersections have two intersection points."
        }
        
        if intersection1.time < 0.0 && intersection2.time < 0.0 {
            // this case puts the spher ebehind the Ray origin.
            result = "These two intersections have two negative intersection points. Sphere is behind the Ray."
        }
        
        return result
    }
}

