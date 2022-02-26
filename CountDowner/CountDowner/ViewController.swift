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
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(setOffAlarm), userInfo: nil, repeats: true)
    }
    
    
    
    @objc func setOffAlarm() {
        print("alarm went off")
    }
    
}

