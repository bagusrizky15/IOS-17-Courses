//
//  SecondViewController.swift
//  5. Segue
//
//  Created by BBPDEV on 27/09/23.
//

import UIKit

class SecondViewController: UIViewController {

    var myName = "myName"
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        // Do any additional setup after loading the view.
    }
    
    

}
