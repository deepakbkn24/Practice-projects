//
//  ViewController.swift
//  prac2TableView
//
//  Created by Deepak B on 18/05/22.
//

import UIKit

struct Details : Codable {
    let localized_name: String
    let attack_type: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var details = [Details]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "sampleTableViewCell", bundle: nil), forCellReuseIdentifier: "sampleCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count/16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sampleCell") as! sampleTableViewCell
        
        cell.nameLbl.text = details[indexPath.row].localized_name
        cell.sunNameLbl.text = details[indexPath.row].attack_type
        
        cell.BackGround.layer.cornerRadius = 7
        cell.BackGround.layer.masksToBounds = true
        
        cell.layer.shadowRadius = 1
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 3, height: 3)
        cell.layer.shadowColor = UIColor.purple.cgColor
  
        return cell
    }
}







