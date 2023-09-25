//
//  ViewController.swift
//  Programatic View
//
//  Created by BBPDEV on 25/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myLabel = UILabel()
        myLabel.text = "Programatic Views"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        view.addSubview(myLabel)
        
    }


}

