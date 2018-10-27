//
//  ProjectDetailsVC.swift
//  Hackathon_2018
//
//  Created by Austin Marino on 3/3/18.
//  Copyright © 2018 Austin Marino. All rights reserved.
//

import UIKit

class ProjectDetailsVC: UIViewController {
    @IBOutlet weak var projectNumber: UILabel!
    @IBOutlet weak var projectDescription: UITextView!
    @IBOutlet weak var projectTitle: UITextField!
    @IBOutlet weak var projectDate: UITextField!
    var loop = 0
    var index = 1
    var projectTitles = [String]()
    var projectDates = [String]()
    var projectDescriptions = [String]()
    override func viewDidLoad() {
        self.loop = UserDefaults.standard.integer(forKey: "projectCount")
        projectDescription.layer.borderWidth = 2
        projectDescription.layer.borderColor = UIColor.gray.cgColor
        super.viewDidLoad()
    }
    @IBAction func back_button_pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func continue_button(_ sender: Any) {
        let Empty = "ignore"
        var isValid = true
        if projectTitle.text! == ""{
            projectTitle.text = ""
            projectTitle.placeholder = "Error: Enter Project Title..."
            isValid = false
        }
        if projectDate.text! == ""{
            projectDate.text = ""
            projectDate.placeholder = "Error: Enter Dates Created..."
            isValid = false
        }
        if projectDescription.text! == "Project Description..." || projectDescription.text! == "Error: Enter Project Description..."{
            projectDescription.text = "Error: Enter Project Description..."
            isValid = false
        }
        if isValid == true{
            switch(index){
            case 1:
                if index != loop {projectNumber.text = "Project Two"}
                break;
            case 2:
                if index != loop {projectNumber.text = "Project Three"}
                break;
            default: break;
            }
            projectTitles.append(projectTitle.text!)
            projectDates.append(projectDate.text!)
            projectDescriptions.append(projectDescription.text!)
            if index == loop {
                print(projectTitles)
                print(projectDates)
                print(projectDescriptions)
                UserDefaults.standard.set(projectTitles, forKey: "projectTitles")
                UserDefaults.standard.set(projectDates, forKey: "projectDates")
                UserDefaults.standard.set(projectDescriptions, forKey: "projectDescriptions")
                performSegue(withIdentifier: "achievements", sender: Empty)
            }
            self.index += 1
            projectTitle.placeholder = "Project Title..."
            projectTitle.text = ""
            projectDate.placeholder = "Dates Created (December 2017 - March 2018)..."
            projectDate.text = ""
            projectDescription.text = "Project Description..."
        }
    }
}

