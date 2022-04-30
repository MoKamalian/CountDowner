//
//  TimeHelper.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-03-12.
//

import Foundation
import AVFoundation

class TimeHelper {
    
    
    static var timer: Timer = Timer()
    static var audioPlayer: AVAudioPlayer?
    static var labelTimer: Bool = false
    static var timeInSeconds: Double = 0.0
    static var count: String = "00:00:00"

    
    class func fireTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeCounter), userInfo: nil, repeats: true)
    }
    
    /* stops the timer from counting down and also immediatly stops the alarm */
    class func timeInvalidator() {
        audioPlayer?.stop()
        timer.invalidate()
    }
    
    /* main method used to keep count of the seconds passed and to update the counter variable used to update the timer label */
    @objc class func timeCounter() {
        
        if timeInSeconds != 0.0 {
            labelTimer = true
            
            timeLabel(timeInSeconds - 1)
            timeInSeconds -= 1
            print(timeInSeconds)
        } else {
            labelTimer = false
            
            let soundURL = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer?.play()
        }
    }
    
     /* used in setting the counter variable which will eventually be used to update a timer label */
    class func timeLabel(_ timeInSeconds: Double) {
        let totalSeconds = Int(timeInSeconds)
        
        
        let hours: String = (totalSeconds / 3600) > 9 ? "\(totalSeconds/3600)" : "0\(totalSeconds/3600)"
        let minutes: String = ((totalSeconds % 3600) / 60) > 9 ? "\((totalSeconds % 3600) / 60)" : "0\((totalSeconds % 3600) / 60)"
        let seconds: String = (totalSeconds % 60) > 9 ? "\(totalSeconds % 60)" : "0\(totalSeconds % 60)"
        
        count = "\(hours):\(minutes):\(seconds)"
        
        
        
    }
    
    /*
     2580 seconds --> 43 minutes
     2580 / 60 (first division by 60 seconds) -- > gives minutes, need to drop the remainder
        if minutes is greater than
     the remainder should be taken and multiplied by 60 to get the seconds
     
     */
    
    
}
