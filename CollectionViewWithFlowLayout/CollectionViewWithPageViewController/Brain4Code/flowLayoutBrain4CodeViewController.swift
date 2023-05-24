//
//  flowLayoutBrain4CodeViewController.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 18/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class flowLayoutBrain4CodeViewController: UIViewController {

    var arrData = ["cat1","cat2","cat3","cat4"]
    @IBOutlet var layoutCollection:UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension flowLayoutBrain4CodeViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = layoutCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! flowLayoutBrain4CodeCell
        cell.img.image = UIImage(named: arrData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = layoutCollection.bounds.width
        return (CGSize(width: collectionWidth/4 - 6, height: collectionWidth/4 - 6))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 2, bottom: 0, right: 2 )
    }
}
