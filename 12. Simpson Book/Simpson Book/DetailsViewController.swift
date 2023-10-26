 //
//  DetailsViewController.swift
//  Simpson Book
//
//  Created by BBPDEV on 26/10/23.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedSimp: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimp?.name
        jobLabel.text = selectedSimp?.job
        imageView.image = selectedSimp?.image

    }

}
