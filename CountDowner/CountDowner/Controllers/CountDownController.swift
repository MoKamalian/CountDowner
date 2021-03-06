//
//  CountDownController.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-03-09.
//

import UIKit

class CountDownController: UIViewController {

    var timerLabel: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        timeCount.text = TimeHelper.count
        
        timerLabel = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeLabel), userInfo: nil, repeats: true)
        
        if TimeHelper.labelTimer == true {
            timerLabel.fire()
        } else if TimeHelper.labelTimer == false {
            timerLabel.invalidate()
        }
    }
    
   
    @IBOutlet weak var timeCount: UILabel!
    
    
    /* The TimeHelper.count property keeps count of the time value and is used as the label */
    @objc func changeLabel() {
        timeCount.text = "\(TimeHelper.count)"
    }
    
    // stops the timer alarm from going off as well as the counter itself
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        TimeHelper.timeInvalidator()
        TimeHelper.count = "00:00:00"
        self.dismiss(animated: true, completion: nil)
    }
    
}
