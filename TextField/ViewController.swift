//
//  ViewController.swift
//  TextField
//
//  Created by R. Kukuh on 30/01/19.
//  Copyright © 2019 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.keyboardType = .alphabet
        ageField.keyboardType = .numberPad
        emailField.keyboardType = .emailAddress
    }
}

