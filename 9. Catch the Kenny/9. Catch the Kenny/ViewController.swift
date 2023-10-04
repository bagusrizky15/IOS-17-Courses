//
//  ViewController.swift
//  9. Catch the Kenny
//
//  Created by BBPDEV on 04/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var timer = Timer()
    var counter = 0

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var frog1: UIImageView!
    @IBOutlet weak var frog2: UIImageView!
    @IBOutlet weak var frog3: UIImageView!
    @IBOutlet weak var frog4: UIImageView!
    @IBOutlet weak var frog5: UIImageView!
    @IBOutlet weak var frog6: UIImageView!
    @IBOutlet weak var frog7: UIImageView!
    @IBOutlet weak var frog8: UIImageView!
    @IBOutlet weak var frog9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Timer: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        scoreLabel.text = "Score: \(score)"
        
        frog1.isUserInteractionEnabled = true
        frog2.isUserInteractionEnabled = true
        frog3.isUserInteractionEnabled = true
        frog4.isUserInteractionEnabled = true
        frog5.isUserInteractionEnabled = true
        frog6.isUserInteractionEnabled = true
        frog7.isUserInteractionEnabled = true
        frog8.isUserInteractionEnabled = true
        frog9.isUserInteractionEnabled = true
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        frog1.addGestureRecognizer(tap1)
        frog2.addGestureRecognizer(tap2)
        frog3.addGestureRecognizer(tap3)
        frog4.addGestureRecognizer(tap4)
        frog5.addGestureRecognizer(tap5)
        frog6.addGestureRecognizer(tap6)
        frog7.addGestureRecognizer(tap7)
        frog8.addGestureRecognizer(tap8)
        frog9.addGestureRecognizer(tap9)
    }
    
    @objc func countTime(){
        timeLabel.text = "Timer: \(counter)"
        counter -= 1
    }

    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
}

