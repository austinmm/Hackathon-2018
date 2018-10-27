//
//  LanguagesVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/4/18.
//  Copyright © 2018 Austin Marino. All rights reserved.
//

import UIKit

class LanguagesVC: UIViewController {

    @IBOutlet weak var C: UISwitch!
    @IBOutlet weak var Cpp: UISwitch!
    @IBOutlet weak var Csharp: UISwitch!
    @IBOutlet weak var Python: UISwitch!
    @IBOutlet weak var Java: UISwitch!
    @IBOutlet weak var JS: UISwitch!
    @IBOutlet weak var Swift: UISwitch!
    @IBOutlet weak var HTML: UISwitch!
    @IBOutlet weak var CSS: UISwitch!
    var arr = [String]()
    var count = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func continueButton(_ sender: Any) {
        let Empty = "ignore"
        if C.isOn{
            arr.append("C")
            count += 1
        }
        if Cpp.isOn{
            arr.append("C++")
            count += 1

        }
        if Csharp.isOn{
            arr.append("C#")
            count += 1

        }
        if Python.isOn{
            arr.append("Python")
            count += 1

        }
        if Java.isOn{
            arr.append("Java")
            count += 1

        }
        if JS.isOn{
            arr.append("JavaScript")
            count += 1

        }
        if Swift.isOn{
            arr.append("Swift")
            count += 1

        }
        if HTML.isOn{
            arr.append("HTML")
            count += 1

        }
        if CSS.isOn{
            arr.append("CSS")
            count += 1
        }
        print(arr)
        UserDefaults.standard.set(arr, forKey: "programArray")
        UserDefaults.standard.set(count, forKey: "programCount")
        performSegue(withIdentifier: "end", sender: Empty)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
