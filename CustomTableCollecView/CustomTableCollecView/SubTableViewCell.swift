//
//  SubTableViewCell.swift
//  CustomTableCollecView
//
//  Created by Deepak B on 26/05/22.
//

import UIKit

class SubTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var birdArr = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "SubCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "subCvCell")
        
        birdArr = [
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "G")!,
            UIImage(named: "H")!,
            UIImage(named: "I")!,
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "G")!,
            UIImage(named: "H")!,
            UIImage(named: "I")!,
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "G")!,
            UIImage(named: "H")!,
            UIImage(named: "I")!
        ]
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return birdArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "subCvCell", for: indexPath) as! SubCollectionViewCell
        cell.imagView.image = birdArr[indexPath.item]
        return cell
    }
}
