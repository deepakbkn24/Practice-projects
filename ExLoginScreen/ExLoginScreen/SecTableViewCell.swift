//
//  SecTableViewCell.swift
//  ExLoginScreen
//
//  Created by Deepak B on 10/06/22.
//

import UIKit

class SecTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var posterImg = [UIImage]()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "SecCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collecCell")
        
        posterImg = [
            UIImage(named: "poster1")!,
            UIImage(named: "poster2")!,
            UIImage(named: "poster3")!,
            UIImage(named: "poster4")!,
            UIImage(named: "poster5")!,
            UIImage(named: "poster6")!,
            UIImage(named: "poster7")!,
            UIImage(named: "poster1")!,
            UIImage(named: "poster2")!,
            UIImage(named: "poster3")!,
            UIImage(named: "poster4")!,
            UIImage(named: "poster5")!,
            UIImage(named: "poster6")!,
            UIImage(named: "poster7")!
        ]
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posterImg.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collecCell", for: indexPath) as! SecCollectionViewCell
        collCell.imgPoster.image = posterImg[indexPath.item]
        return collCell
    }
}
