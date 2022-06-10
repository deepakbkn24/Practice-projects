//
//  ViewController.swift
//  design2TableView
//
//  Created by Deepak B on 20/05/22.
//

import UIKit

struct Details : Codable {
    let localized_name: String
    let attack_type: String
}

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var details = [Details]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.tableView.register(UINib(nibName: "designTableViewCell", bundle: nil), forCellReuseIdentifier: "designCell")
        
        getApi()
    }
    
    func getApi () {
        let url = URL(string: "https://api.opendota.com/api/herostats")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil {
                do{
                    self.details = try JSONDecoder().decode([Details].self, from: data!)
                }catch{
                    print("Not Working!")
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count/16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "designCell") as! designTableViewCell
        cell.nameLbl.text = details[indexPath.row].localized_name
        return cell
    }
    

}

