//
//  TimeHelper.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-03-12.
//

import Foundation


class TimeHelper {
    
    
    static var timer: Timer = Timer()
    static var labelTimer: Bool = false
    static var timeInSeconds: Double = 0.0
    static var count: String = "00:00:00"

    
    class func fireTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeCounter), userInfo: nil, repeats: true)
    }
    
    class func timeInvalidator() {
        timer.invalidate()
    }
    
    
    @objc class func timeCounter() {
        
        if timeInSeconds != 0.0 {
            labelTimer = true
            timeLabel()
            timeInSeconds -= 1
            print(timeInSeconds)
        } else {
            labelTimer = false
            print("Alarm is going off")
        }
    }
    
    // TODO - create a method that will update the countdown timer 
    class func timeLabel() {
        let totalSeconds = Int(timeInSeconds)
        
        
        let hours: Int = totalSeconds / 3600
        let minutes: Int = (totalSeconds % 3600) / 60
        let seconds: Int = totalSeconds % 60
        
        count = "\(hours):\(minutes):\(seconds)"
        
    }
    
    /*
     2580 seconds --> 43 minutes
     2580 / 60 (first division by 60 seconds) -- > gives minutes, need to drop the remainder
        if minutes is greater than
     the remainder should be taken and multiplied by 60 to get the seconds
     
     */
    
    
}
