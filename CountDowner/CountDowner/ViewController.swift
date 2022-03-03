//
//  ViewController.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-02-08.
//

import UIKit

class ViewController: UIViewController {
    

    var timer = Timer()
    var numberOfSeconds: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func selectedTime(sender: UIDatePicker, forEvent event: UIEvent) {
        numberOfSeconds = sender.countDownDuration as Double
        
    }
    
    @IBAction func stopTimer(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func startTimer(_ sender: UIButton) {
        print(numberOfSeconds)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDownTime), userInfo: nil, repeats: true)
    }
    
    @objc func countDownTime() {
        
        if numberOfSeconds != 0.0 {
            
            numberOfSeconds -= 1.0
            print(numberOfSeconds)
            
        } else if numberOfSeconds == 0.0 {
            
            print("Alarm is going off")
            
        }
    }
    
}

