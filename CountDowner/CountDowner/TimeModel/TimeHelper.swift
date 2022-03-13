//
//  TimeHelper.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-03-12.
//

import Foundation


class TimeHelper {
    
    
    static var timer: Timer = Timer()
    static var timeInSeconds: Double = 0.0
    
    
    class func fireTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeCounter), userInfo: nil, repeats: true)
    }
    
    class func timeInvalidator() {
        timer.invalidate()
    }
    
    
    @objc class func timeCounter() {
        if timeInSeconds != 0.0 {
            timeInSeconds -= 1
            print(timeInSeconds)
        } else {
            print("Alarm is going off")
        }
    }
    
    
}
