//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
     override init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, maxAltitude: maxAltitude)
    }
    
    override func climb() {
        if self.inFlight {
            self.altitude += 1/5 * self.maxAltitude
            super.decelerate()
            
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
        }
    }
    
    override func dive() {
        if self.inFlight {
            self.altitude -= 1/5 * self.maxAltitude
            super.accelerate()
            
            if self.altitude < 0 {
                self.altitude = 0
            }
        }
    }
    
    func afterburner() {
        if self.inFlight && super.speed == super.maxSpeed {
            super.speed = super.maxSpeed * 2
        }
    }
    
}
