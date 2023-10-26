//
//  ViewController.swift
//  Simpson Book
//
//  Created by BBPDEV on 25/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var mySimp = [Simpson]()
    var chosenSimp : Simpson?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
         
        tableView.delegate = self
        tableView.dataSource = self
        
        let abbey = Simpson(name: "Abbey", job: "Terrorist", image: UIImage(named: "abbey")!)
        let abacus = Simpson(name: "Abacus", job: "Monster", image: UIImage(named: "abacus")!)
        let theman = Simpson(name: "The Man", job: "Terrorist", image: UIImage(named: "theman")!)
        
        mySimp.append(abbey)
        mySimp.append(abacus)
        mySimp.append(theman)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimp[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        chosenSimp = mySimp[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimp = chosenSimp
        }
    }

}

