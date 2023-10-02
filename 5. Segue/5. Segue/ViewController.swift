//
//  ViewController.swift
//  5. Segue
//
//  Created by BBPDEV on 27/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: UIButton) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let desinationVC = segue.destination as! SecondViewController
            desinationVC.myName = userName
        }
           
    }
}

