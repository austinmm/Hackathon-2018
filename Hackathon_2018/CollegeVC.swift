//  EducationVC.swift
//  Hackathon_2018
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.

import UIKit

class CollegeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func wsuPressed(_ sender: Any) {
        UserDefaults.standard.set("Washington State University", forKey: "college")
    }
    @IBAction func uwPressed(_ sender: Any) {
        UserDefaults.standard.set("University of Washington", forKey: "college")
    }
    
    @IBAction func uiPressed(_ sender: Any) {
        UserDefaults.standard.set("University of Idaho", forKey: "college")
    }
    @IBAction func back_button_pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
