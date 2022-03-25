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
        
        timerLabel = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeLabel), userInfo: nil, repeats: true)
        
        if TimeHelper.labelTimer == true {
            timerLabel.fire()
        } else if TimeHelper.labelTimer == false {
            timerLabel.invalidate()
        }
        
        
        
    }
    
    @IBOutlet weak var timeCount: UILabel!
    
    @objc func changeLabel() {
        timeCount.text = "\(TimeHelper.count)"
    }
    
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        TimeHelper.timeInvalidator()
        self.dismiss(animated: true, completion: nil)
    }
    
}
