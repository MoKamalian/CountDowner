//
//  CountDownController.swift
//  CountDowner
//
//  Created by Mo Kamalian on 2022-03-09.
//

import UIKit

class CountDownController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBOutlet weak var timeCount: UILabel!
    
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        TimeHelper.timeInvalidator()
        self.dismiss(animated: true, completion: nil)
    }
    
}
