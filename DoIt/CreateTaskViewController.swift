//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by sahaj makharia on 04/06/17.
//  Copyright © 2017 Sahaj Makharia. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        //creating task from outlet information provided by user 
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
    
        // Adding the created task to array in previous View controller
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
}
