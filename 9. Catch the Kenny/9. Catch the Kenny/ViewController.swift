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
    var frogArray = [UIImageView]()
    var randomFrogShow = Timer()
    var highScore = 0

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
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highScore")
        if storedHighScore != nil{
            highScore = storedHighScore as! Int
        }
        highScoreLabel.text = "Highscore: \(highScore)"
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
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
        
        frogArray = [frog1, frog2, frog3, frog4, frog5, frog6, frog7, frog8, frog9]
        randomFrogShow = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideFrog), userInfo: nil, repeats: true)
        hideFrog()
    }
    
    @objc func hideFrog(){
        for frog in frogArray {
            frog.isHidden = true
        }
        
        let randomFrog = Int(arc4random_uniform(UInt32(frogArray.count-1)))
        frogArray[randomFrog].isHidden = false
    }
    
    @objc func countTime(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            randomFrogShow.invalidate()
            timeLabel.text = "Time's Up"
            
            for frog in frogArray {
                frog.isHidden = true
            }
            
            let alert = UIAlertController(title: "Time's Up", message: "Wanna play again?", preferredStyle: UIAlertController.Style.alert)
            
            let playAgain = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default){
                (UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 10
                self.timeLabel.text = "Time: \(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countTime), userInfo: nil, repeats: true)
                self.randomFrogShow = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideFrog), userInfo: nil, repeats: true)
                
                
            }
            let cancelButton = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel)
            
            alert.addAction(playAgain)
            alert.addAction(cancelButton)
            present(alert, animated: true, completion: {
                if self.score > self.highScore {
                    self.highScore = self.score
                }
                
                UserDefaults.standard.set(self.highScore, forKey: "highScore")
                self.highScoreLabel.text = "Highscore: \(self.highScore)"
            })
        }
    }

    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
}

