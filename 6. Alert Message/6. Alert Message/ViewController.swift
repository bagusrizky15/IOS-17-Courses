//
//  ViewController.swift
//  6. Alert Message
//
//  Created by BBPDEV on 03/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: UIButton) {
        checkValidation()
    }
    
    func checkValidation(){
        if usernameText.text == "" {
            showPopUp(message: "Username is empty")
        } else if passwordText.text == "" {
            showPopUp(message: "Password is empty")
        } else if password2Text.text == "" {
            showPopUp(message: "Re-Password is empty")
        } else if passwordText.text != password2Text.text {
            showPopUp(message: "Password doesnt matches")
        } else {
            showPopUp(title: "Login Success", message: "Have a nice day!")
        }
    }
    
    func showPopUp(title: String="Error", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print(message)
        }
        
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
}

