//  CollegeInfoVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.

import UIKit

class CollegeInfoVC: UIViewController {

    @IBOutlet weak var major: UITextField!
    @IBOutlet weak var Graduation: UITextField!
    @IBOutlet weak var gpa: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func continueButton(_ sender: Any) {
        var isValid = true
        if major.text! == ""{
            major.placeholder = "Error: Enter Major..."
            isValid = false
        }
        if Graduation.text! == ""{
            Graduation.placeholder = "Error: Enter Graduation Year..."
            isValid = false
        }
        if gpa.text! == ""{
            gpa.placeholder = "Error: Enter GPA..."
            isValid = false
        }
        if isValid == true{
            UserDefaults.standard.set(major.text!, forKey: "major")
            UserDefaults.standard.set(Graduation.text!, forKey: "graduation")
            UserDefaults.standard.set(gpa.text!, forKey: "gpa")
            let empty = "ignore"
            performSegue(withIdentifier: "WorkExperience", sender: empty)
        }
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
