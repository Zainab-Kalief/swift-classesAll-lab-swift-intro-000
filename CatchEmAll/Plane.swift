//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool {
        if self.altitude > 0 && super.speed > 0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if self.inFlight == false {
            super.speed = 1/10 * super.maxSpeed
            self.altitude = 1/10 * self.maxAltitude
        }
    }
    
    func land() {
        super.speed = 0
        self.altitude = 0
    }
    
    func climb() {
        if self.inFlight {
            self.altitude += 1/10 * self.maxAltitude
            super.decelerate()
            
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
        }
    }
    
    func dive() {
        if self.inFlight {
            self.altitude -= 1/10 * self.maxAltitude
            super.accelerate()
            
            if self.altitude < 0 {
                self.altitude = 0
    
            }
        }
    }
    
    func bankRight() {
        if self.inFlight {
            super.heading += 45
            super.speed -= 1/10 * super.speed
            
            if super.heading > 360 {
                super.heading = super.heading.truncatingRemainder(dividingBy: 360.0)
            }
        }
    }
    
    func bankLeft() {
        if self.inFlight {
            super.heading -= 45
            super.speed -= 1/10 * super.speed
            
            if super.heading < 0 {
                super.heading = super.heading + 360
            }
        }
    }
    
    
    
    
    
    
}
