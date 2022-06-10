//
//  ViewController.swift
//  CustomTableCollecView
//
//  Created by Deepak B on 26/05/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var headerTtl = ["Birds Sec1","Birds Sec2","Birds Sec3","Birds Sec4","Birds Sec5","Birds Sec6",]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "SubTableViewCell", bundle: nil), forCellReuseIdentifier: "subTbCell")
      
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subTbCell") as! SubTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerTtl[section]
    }

}

