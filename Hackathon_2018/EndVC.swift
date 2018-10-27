//
//  EndVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/4/18.
//  Copyright © 2018 Austin Marino. All rights reserved.
//

import UIKit
import Foundation

//var output: CInt = 0
class EndVC: UIViewController {
    
    struct userInfo{
        var name = UserDefaults.standard.data(forKey: "name"), email = UserDefaults.standard.data(forKey: "email"),
        phone = UserDefaults.standard.data(forKey: "phone"), college = UserDefaults.standard.data(forKey: "college"),
        major = UserDefaults.standard.data(forKey: "major"), graduation = UserDefaults.standard.data(forKey: "graduation"),
        gpa = UserDefaults.standard.data(forKey: "gpa"), jobCount = UserDefaults.standard.data(forKey: "jobCount"),
        jobTitles = UserDefaults.standard.array(forKey: "jobTitles"), jobNames = UserDefaults.standard.array(forKey: "jobNames"),
        jobDates = UserDefaults.standard.array(forKey: "jobDates"), jobDescriptions = UserDefaults.standard.array(forKey: "jobDescriptions"), projectCount = UserDefaults.standard.data(forKey: "projectCount"),
        projectTitles = UserDefaults.standard.array(forKey: "projectTitles"), projectDates = UserDefaults.standard.array(forKey: "projectDates"),
        projectDescriptions = UserDefaults.standard.array(forKey: "projectDescriptions"),
        achievements = UserDefaults.standard.array(forKey: "achievements"), languages = UserDefaults.standard.array(forKey: "languages")
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
