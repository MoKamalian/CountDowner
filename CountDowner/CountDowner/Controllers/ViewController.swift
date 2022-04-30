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
        timeSelector.datePickerMode = .countDownTimer
        
    }
    
    /*
    @IBAction func selectedTime(sender: UIDatePicker, forEvent event: UIEvent) {
        TimeHelper.timeInSeconds = sender.countDownDuration as Double
    
    }
    */
    
    @IBOutlet weak var timeSelector: UIDatePicker!
    
    /* grabs the number of seconds selected by the user and sends it to TimeHelper to initiate the count down in seconds */
    @IBAction func startTimer(_ sender: UIButton) {
        TimeHelper.timeInSeconds = timeSelector.countDownDuration as Double
        TimeHelper.fireTimer()
        performSegue(withIdentifier: "StartButtonPressedTimer", sender: self)
    }
    

    
}

