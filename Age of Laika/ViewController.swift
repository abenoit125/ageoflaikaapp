//
//  ViewController.swift
//  Age of Laika
//
//  Created by Alex Benoit on 11/9/14.
//  Copyright (c) 2014 Alex Benoit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let stringFromTextField = humanYearsTextField.text.toInt()!
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(stringFromTextField / 7)" + " dog years"
        
        humanYearsTextField.resignFirstResponder()
    }

}

