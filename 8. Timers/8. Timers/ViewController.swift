//
//  ViewController.swift
//  8. Timers
//
//  Created by BBPDEV on 03/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var timer = Timer()
    var counter = 0
    var count: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 100
        timeLabel.text = "Time: \(counter)"
        
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        count = (count) ? false : true
        
        if count {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAY), userInfo: nil, repeats: true)
            buttonLabel.setTitle("Stop", for: .disabled)
            buttonLabel.tintColor = .systemRed
        } else {
            timer.invalidate()
            buttonLabel.setTitle("Start", for: .normal)
            buttonLabel.tintColor = .blue
        }
    }
    
    @objc func timerAY(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Up"
        }
    }
}

