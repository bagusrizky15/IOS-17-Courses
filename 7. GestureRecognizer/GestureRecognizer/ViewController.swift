//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by BBPDEV on 03/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myName: UILabel!
    
    var click: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.isUserInteractionEnabled = true
        
        let userGesture = UITapGestureRecognizer(target: self, action: #selector(changePic))
        myImage.addGestureRecognizer(userGesture)
    }

    @objc func changePic(){
        myImage.image = (click) ? UIImage(named: "bagus") : UIImage(named: "rizky")
        myName.text = (click) ? "bagus" : "rizky"
        click = (click) ? false : true
    }

}

