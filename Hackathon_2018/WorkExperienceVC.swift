//  WorkExperienceVC.swift
//  Hackathon_2018
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.

import UIKit

class WorkExperienceVC: UIViewController {
    var page = 1
    @IBOutlet weak var count: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func stepper_pressed(_ sender: UIStepper) {
        count.text = String(Int(sender.value))
        page = Int(sender.value)
        
    }
    @IBAction func continue_pressed(_ sender: Any) {
        UserDefaults.standard.set(page, forKey: "jobCount")
        let Empty = "ignore"
        performSegue(withIdentifier: "WorkDetails", sender: Empty)
    }
    
    @IBAction func back_button_pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
