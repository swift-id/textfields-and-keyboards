//
//  ViewController.swift
//  TextField
//
//  Created by R. Kukuh on 30/01/19.
//  Copyright © 2019 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.keyboardType = .alphabet
        ageField.keyboardType = .numberPad
        emailField.keyboardType = .emailAddress
        
        // Delegates using these codes, or drag connection from inspector
        // nameField.delegate = self
        // ageField.delegate = self
        // emailField.delegate = self
    }
    
    // Hide the keyboard by press [return] key in keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
            ageField.becomeFirstResponder()
        } else if textField == ageField {
            emailField.becomeFirstResponder()
        } else {
            emailField.resignFirstResponder()
        }
        
        return true
    }
    
    // Hide the keyboard by tapping on the blank spaces
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

