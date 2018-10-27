//
//  AchievementsVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/4/18.
//  Copyright © 2018 Austin Marino. All rights reserved.
//

import UIKit

class AchievementsVC: UIViewController {
    @IBOutlet weak var achievement1: UITextField!
    @IBOutlet weak var achievement2: UITextField!
    @IBOutlet weak var achievement3: UITextField!
    @IBOutlet weak var achievement4: UITextField!
    @IBOutlet weak var achievement5: UITextField!
    var arr = [String]()
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let Empty = "ignore"
        if achievement1.text != ""{
            count += 1
            arr.append(achievement1.text!)
            //UserDefaults.standard.set(achievement1.text, forKey: "achievement1")
        }
        if achievement2.text != ""{
            count += 1
            arr.append(achievement2.text!)
            //UserDefaults.standard.set(achievement2.text, forKey: "achievement2")
        }
        if achievement3.text != ""{
            count += 1
            arr.append(achievement3.text!)
            //UserDefaults.standard.set(achievement3.text, forKey: "achievement3")
        }
        if achievement4.text != ""{
            count += 1
            arr.append(achievement4.text!)
            //UserDefaults.standard.set(achievement4.text, forKey: "achievement4")
        }
        if achievement5.text != ""{
            count += 1
            arr.append(achievement5.text!)
            //UserDefaults.standard.set(achievement5.text, forKey: "achievement5")
        }
        print(arr)
        UserDefaults.standard.set(arr, forKey: "achievementsArray")
        UserDefaults.standard.set(count, forKey: "achievementCount")
        if arr.isEmpty == false{
            performSegue(withIdentifier: "languages", sender: Empty)
        }else{
            achievement1.text = ""
            achievement1.placeholder = "Error: Enter at Least One Achievement..."
        }
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
