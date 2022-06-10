//
//  designTableViewCell.swift
//  design2TableView
//
//  Created by Deepak B on 20/05/22.
//

import UIKit

class designTableViewCell: UITableViewCell {
    
    @IBOutlet weak var BavkView: UIView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var borderLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        borderLbl.layer.cornerRadius = 5
        borderLbl.layer.masksToBounds = true
        
        
    }

}
