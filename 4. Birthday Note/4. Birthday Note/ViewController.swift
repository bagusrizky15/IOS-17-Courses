//
//  ViewController.swift
//  4. Birthday Note
//
//  Created by BBPDEV on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var birthdayField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: UIButton) {
        nameLabel.text = nameField.text
        birthdayLabel.text = birthdayField.text
    }
    

}

