//
//  ViewController.swift
//  Prac2CollecView
//
//  Created by Deepak B on 25/05/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    var imgData = [UIImage]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "Sub1CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "sub1Cell")
        
        self.collectionView.register(UINib(nibName: "Sub2CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "sub2Cell")
        
        
        imgData = [
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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item % 2 == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sub1Cell", for: indexPath) as! Sub1CollectionViewCell
            cell.imgView.image = imgData[indexPath.item]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sub2Cell", for: indexPath) as! Sub2CollectionViewCell
            cell.img2View.image = imgData[indexPath.item]
            
            return cell
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collecWidth = collectionView.frame.size.width
        return CGSize(width: collecWidth/3, height: collecWidth/3)
    }
    

}

