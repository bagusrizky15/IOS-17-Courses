//
//  ViewController.swift
//  1.FistApp
//
//  Created by BBPDEV on 25/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButton(_ sender: UIButton) {
        imageView.image = UIImage(named: "image2")
    }
}

