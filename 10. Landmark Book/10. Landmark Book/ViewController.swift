//
//  ViewController.swift
//  10. Landmark Book
//
//  Created by BBPDEV on 05/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var imageName = [String]()
    var listImage = [UIImage]()
    
    var chosenName = ""
    var chosenImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        imageName.append("one")
        imageName.append("two")
        imageName.append("three")
        
        listImage.append(UIImage(named: "one.jpeg")!)
        listImage.append(UIImage(named: "two.jpeg")!)
        listImage.append(UIImage(named: "three.jpeg")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = imageName[indexPath.row]
//        content.secondaryText = "Desc"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = imageName[indexPath.row]
        chosenImage = listImage[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedName = chosenName
            destinationVC.selectedImage = chosenImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.imageName.remove(at: indexPath.row)
            self.listImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

