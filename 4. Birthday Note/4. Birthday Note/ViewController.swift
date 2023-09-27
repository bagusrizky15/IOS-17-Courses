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
    
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedBirthDay = UserDefaults.standard.object(forKey: "birthDay")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let myName = storedName as? String{
            nameLabel.text = "Name : \(myName)"
        }
        
        if let myBirthday = storedBirthDay as? String{
            birthdayLabel.text = "Birthday : \(myBirthday)"
        }
        
    }

    @IBAction func saveButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(nameField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayField.text!, forKey: "birthDay")
        
        nameLabel.text = "Name : \(nameField.text!)"
        birthdayLabel.text = "Birthday : \(birthdayField.text!)"
        
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        if storedName as? String != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name : "
        }
        if storedBirthDay as? String != nil{
            UserDefaults.standard.removeObject(forKey: "birthDay")
            birthdayLabel.text = "Birthday : "
        }
        
    }
    
}

