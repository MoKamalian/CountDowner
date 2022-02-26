//
//  ViewController.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-02-08.
//

import UIKit

class ViewController: UIViewController {
    
    
    let timeSelector: UIDatePicker = UIDatePicker()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func stopTimer(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func startTimer(_ sender: UIButton) {
        timeSelector.datePickerMode = UIDatePicker.Mode.countDownTimer
    
        timer = Timer.scheduledTimer(timeInterval: timeSelector.countDownDuration, target: self, selector: #selector(countDownTime), userInfo: nil, repeats: false)
    }
    
    
    @objc func countDownTime() {
        print("Alarm is going off")
        
    }
    
}

