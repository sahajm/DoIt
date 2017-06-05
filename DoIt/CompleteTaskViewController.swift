//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by sahaj makharia on 04/06/17.
//  Copyright © 2017 Sahaj Makharia. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "‼️ \(task.name)"
        } else {
            taskLabel.text = task.name
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func completeTap(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)

    }


    

   

}
