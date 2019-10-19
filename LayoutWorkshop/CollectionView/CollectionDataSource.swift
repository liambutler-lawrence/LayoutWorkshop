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
        
        return cell
    }
    
    
}
