//
//  Material.swift
//  Ray Tracing Challenge V7
//
//  Created by Thomas Cunningham on 11/26/21.
//

import Foundation

struct Material {
    var color: Color
    var ambient, diffuse, specular, shininess: Double

    init(color: Color = .white, ambient: Double = 0.1, diffuse: Double = 0.8, specular: Double = 0.8, shininess: Double = 100.0) {
        self.color = color
        self.ambient = ambient
        self.diffuse = diffuse
        self.specular = specular
        self.shininess = shininess
    }
    
    init() {
        color = Color.white
        ambient = 0.1
        diffuse = 0.9
        specular = 0.9
        shininess = 200.0
    }
}
