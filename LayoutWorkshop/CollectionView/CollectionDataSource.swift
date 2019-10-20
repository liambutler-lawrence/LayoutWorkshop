//
//  CollectionDataSource.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 10/19/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class CollectionDataSource: NSObject, UICollectionViewDataSource {
    
    let data = ["item1", "item2", "item3", "item4", "item5", "item6", "item7", "item8"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "collectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        
        formatCollectionViewCell(cell)

        return cell
    }
    

    func formatCollectionViewCell(_ cell: UICollectionViewCell) {
        
        //change background color of cell contentView
        cell.contentView.backgroundColor = UIColor.white
        
        //round the corners of the cell
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
        
        //add a drop shadow to the cell
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath

    }
    
    
}
