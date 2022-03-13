//
//  ViewController.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-02-08.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func selectedTime(sender: UIDatePicker, forEvent event: UIEvent) {
        TimeHelper.timeInSeconds = sender.countDownDuration as Double
    
    }
    
    @IBAction func stopTimer(_ sender: UIButton) {
        TimeHelper.timeInvalidator()
    }
    
    
    @IBAction func startTimer(_ sender: UIButton) {
        TimeHelper.fireTimer()
        performSegue(withIdentifier: "StartButtonPressedTimer", sender: self)
    }
    

    
}

