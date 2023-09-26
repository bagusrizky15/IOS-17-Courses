//
//  ViewController.swift
//  4. Birthday Note
//
//  Created by BBPDEV on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayField: UITextField!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthDay")
        
        if let myName = storedName as? String{
            nameLabel.text = myName
        }
        
        if let myBirthday = storedBirthDay as? String{
            birthdayLabel.text = myBirthday
        }
        
    }

    @IBAction func saveButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(nameField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayField.text!, forKey: "birthDay")
        
        nameLabel.text = "Name : \(nameField.text!)"
        birthdayLabel.text = "Birthday : \(birthdayField.text!)"
        
    }
    
}

