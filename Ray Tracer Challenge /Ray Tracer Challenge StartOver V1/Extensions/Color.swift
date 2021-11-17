//
//  Color.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

struct Color: Equatable {
    var red: Double = 0.0
    var green: Double = 0.0
    var blue: Double = 0.0
    var alpha: Double = 1.0
    
    static let white = Color(red: 1, green: 1, blue: 1)
    static let black = Color(red: 0, green: 0, blue: 0)
    static let red = Color(red: 1, green: 0, blue: 0)
    static let green = Color(red: 0, green: 1, blue: 0)
    static let blue = Color(red: 0, green: 0, blue: 1)
    
    var clamped: Color {
        return Color(red: red.clamped(), green: green.clamped(), blue: blue.clamped(), alpha: alpha.clamped())
    }
    
    static func + (left: Color, right: Color) -> Color {
        Color(red: left.red + right.red, green: left.green + right.green, blue: left.blue + right.blue, alpha: left.alpha + right.alpha)
    }
    
    static func - (left: Color, right: Color) -> Color {
        Color(red: left.red - right.red, green: left.green - right.green, blue: left.blue - right.blue, alpha: left.alpha - right.alpha)
    }
    
    static func * (left: Color, scaler: Double) -> Color {
        Color(red: left.red * scaler, green: left.green * scaler, blue: left.blue * scaler, alpha: left.alpha * scaler)
    }
    
    // Hadamard Product
    static func * (left: Color, right: Color) -> Color {
        Color(red: left.red * right.red, green: left.green * right.green, blue: left.blue * right.blue, alpha: left.alpha * right.alpha)
    }
}
