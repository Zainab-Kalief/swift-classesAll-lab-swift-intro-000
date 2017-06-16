//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
     init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        super.speed += 1/5 * super.maxSpeed
        
        if super.speed > super.maxSpeed {
            super.speed = super.maxSpeed
        }
    }
    
    override func decelerate() {
        super.speed -= 1/5 * super.maxSpeed
        
        if super.speed < 0 {
            super.speed = 0
        }
    }
    
    func driftRight() {
        if super.speed > 0 {
            super.heading += 90
            super.speed -= 1/4 * super.speed
            
            if super.heading > 360 {
                super.heading = super.heading.truncatingRemainder(dividingBy: 360.0)
            }
        }
    }
    
    func driftLeft() {
        if super.speed > 0 {
            super.heading -= 90
            super.speed -= 1/4 * super.speed
            
            if super.heading < 0 {
                super.heading = super.heading + 360
            }
        }
    }
    
    
    
    
    
}
