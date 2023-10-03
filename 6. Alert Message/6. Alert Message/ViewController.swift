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
        let alert = UIAlertController(title: "Error", message: "Username is empty", preferredStyle: UIAlertController.Style.alert)
        
        self.present(alert, animated: true)
    }
    
}

