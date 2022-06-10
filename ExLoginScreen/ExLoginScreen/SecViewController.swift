//
//  SecViewController.swift
//  ExLoginScreen
//
//  Created by Deepak B on 10/06/22.
//

import UIKit

class SecViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "SecTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tabCell  = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! SecTableViewCell
        return tabCell
    }
    

}
