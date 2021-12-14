//
//  ViewController.swift
//  AgingPeople
//
//  Created by A Ab. on 11/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Aisha", "Hessa", "Hala", "Deem", "Wesam", "Abdulmohsin", "Elham", "Abdullah", "Ahmad", "Asma", "Najla", "Abdulaziz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5..<96)) years old"

        return cell
    }
    
}
