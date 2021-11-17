//
//  ProjectileTickTest.swift
//  Ray Tracer Challenge StartOver V1
//
//  Created by Thomas Cunningham on 11/16/21.
//

import Foundation

struct Projectile {
    var position: Vector4
    var velocity: Vector4
    
    init(pos: Vector4, vel: Vector4) {
        self.position = Vector4.point(x: pos.x, y: pos.y, z: pos.z)
        self.velocity = Vector4.vector(x: vel.x, y: vel.y, z: vel.z)
    }
}

struct ProjectileEnvironment {
    var gravity: Vector4
    var wind: Vector4
    
    init(grav: Vector4, win: Vector4) {
        self.gravity = Vector4.vector(x: grav.x, y: grav.y, z: grav.z)
        self.wind = Vector4.vector(x: win.x, y: win.y, z: win.z)
    }
    
    init() {
        self.gravity = Vector4.zero()
        self.wind = Vector4.zero()
    }
    
    func Tick(env: ProjectileEnvironment, proj: Projectile) -> Projectile {
        let newPosition = proj.position + proj.velocity
        let newVelocity = proj.velocity + env.gravity + env.wind
        
        return Projectile(pos: newPosition, vel: newVelocity)
    }
}

extension ProjectileEnvironment {
    
    func RunProjectile() -> String {
        var result = ""
        var p = Projectile(pos: Vector4.point(x: 0, y: 1, z: 0), vel: Vector4.vector(x: 1, y: 1, z: 0))
        let environ = ProjectileEnvironment(grav: Vector4.vector(x: 0, y: -0.1, z: 0), win: Vector4.vector(x: -0.01, y: 0, z: 0))
        
        for x in 0...25 {
            p = Tick(env: environ, proj: p)
            let a = String(format: "Position: x: %.2f", p.position.x)
            let b = String(format: " y: %.2f", p.position.y)
            let c = String(format: " z: %.2f", p.position.z)
            result += a + b + c + "\n"
            if p.position.y <= 0 {
                result += "Projectile has hit the ground after \(x) iterations.\n"
                break
            }
        }
        
        return result
    }
    
    func ProjectileTracking() -> UIImage {
        let canvas = CanvasFrameBuffer(width: 900, height: 550)
        let startPoint = Vector4.point(x: 0, y: 1, z: 0)
        var velocity = Vector4.vector(x: 1, y: 1.8, z: 0)
        velocity = velocity.normalize * 11.25
        let gravity = Vector4.vector(x: 0, y: -0.1, z: 0)
        let wind = Vector4.vector(x: -0.01, y: 0, z: 0)
        let environ = ProjectileEnvironment(grav: gravity, win: wind)
        var projectile = Projectile(pos: startPoint, vel: velocity)
        
        for _ in 0...200 {
            projectile = Tick(env: environ, proj: projectile)
            canvas.setPixel(x: Int(projectile.position.x), y: Int(550 - projectile.position.y), color: Color.red)
        }
        return canvas.theImage
    }
}
