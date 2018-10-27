//  ViewController.swift
//  Hackathon_2018
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var phoneInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func ButtonPressed(_ sender: Any){
        var isValid = true
        if nameInput.text! == ""{
            nameInput.placeholder = "Error: Enter Full Name..."
            isValid = false
        }
        if emailInput.text! == ""{
            emailInput.placeholder = "Error: Enter Email..."
            isValid = false
        }
        if emailInput.text! == ""{
            phoneInput.placeholder = "Error: Enter Phone Number..."
            isValid = false
        }
        if isValid{
            let Empty = "ignore"
            UserDefaults.standard.set(nameInput.text!, forKey: "name")
            UserDefaults.standard.set(emailInput.text!, forKey: "email")
            UserDefaults.standard.set(phoneInput.text!, forKey: "phone")
            performSegue(withIdentifier: "College", sender: Empty)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!){
    }
}
