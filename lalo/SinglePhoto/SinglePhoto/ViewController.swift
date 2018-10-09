//
//  ViewController.swift
//  SinglePhoto
//
//  Created by macbook on 28/06/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let array = ["México", "Rusia", "Italia", "Tailandia", "Sri Lanka"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = array[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    @IBAction func selectOption(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
            case 0:
                tableView.isHidden = false
                break
            case 1:
                tableView.isHidden = true
                break
            default:
                break
        }
    }
    
}

