//
//  Sub2CollectionViewCell.swift
//  Prac2CollecView
//
//  Created by Deepak B on 25/05/22.
//

import UIKit

class Sub2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var back2View: UIView!
    
    @IBOutlet weak var img2View: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        back2View.layer.cornerRadius = back2View.frame.width/2
      img2View.layer.cornerRadius = img2View.frame.width/2
    }

}
