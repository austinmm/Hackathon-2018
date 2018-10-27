
//  WorkDetailsVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.

import UIKit

class WorkDetailsVC: UIViewController {
    @IBOutlet weak var workNumber: UILabel!
    @IBOutlet weak var jobDescription: UITextView!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var datesWorked: UITextField!
    @IBOutlet weak var jobTitle: UITextField!
    var loop = 0
    var index = 1
    var jobTitles = [String]()
    var jobNames = [String]()
    var jobDates = [String]()
    var jobDescriptions = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loop = UserDefaults.standard.integer(forKey: "jobCount")
        jobDescription.layer.borderWidth = 2
        jobDescription.layer.borderColor = UIColor.gray.cgColor
    }
    @IBAction func back_button_pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func continue_button(_ sender: Any) {
        let Empty = "ignore"
        var isValid = true
        if jobTitle.text! == ""{
            jobTitle.text = ""
            jobTitle.placeholder = "Error: Enter Job Title..."
            isValid = false
        }
        if companyName.text! == ""{
            companyName.text = ""
            companyName.placeholder = "Error: Enter Company Name..."
            isValid = false
        }
        if datesWorked.text! == ""{
            datesWorked.text = ""
            datesWorked.placeholder = "Error: Enter Dates Worked..."
            isValid = false
        }
        if jobDescription.text! == "Job Description..." || jobDescription.text! == "Error: Enter Job Description..."{
            jobDescription.text = "Error: Enter Job Description..."
            isValid = false
        }
        if isValid == true{
            switch(index){
            case 1:
                if index != loop {workNumber.text = "Occupation Two"}
                break;
            case 2:
                if index != loop {workNumber.text = "Occupation Three"}
                break;
            default: break;
            }
            jobTitles.append(jobTitle.text!)
            jobNames.append(companyName.text!)
            jobDates.append(datesWorked.text!)
            jobDescriptions.append(jobDescription.text!)
            if index == loop {
                print(jobTitles)
                print(jobNames)
                print(jobDates)
                print(jobDescriptions)
                UserDefaults.standard.set(jobTitles, forKey: "jobTitles")
                UserDefaults.standard.set(jobNames, forKey: "jobNames")
                UserDefaults.standard.set(jobDates, forKey: "jobDates")
                UserDefaults.standard.set(jobDescriptions, forKey: "jobDescriptions")
                performSegue(withIdentifier: "ProjectsVC", sender: Empty)
            }
            self.index += 1
            jobTitle.placeholder = "Job Title..."
            jobTitle.text = ""
            companyName.placeholder = "Company Name..."
            companyName.text = ""
            datesWorked.placeholder = "Dates Worked (May 2017 - June 2018)..."
            datesWorked.text = ""
            jobDescription.text = "Job Description..."
        }
    }
    
}
