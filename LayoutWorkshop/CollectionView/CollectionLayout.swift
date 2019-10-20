//
//  CollectionLayout.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 10/19/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class CollectionLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        
        guard let collectionView = collectionView else {
            return
        }
        
        //check width of collection view
        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width

        //set width & height of cell
        let cellWidth = availableWidth
        let cellHeight: CGFloat = 260
        self.itemSize = CGSize(width: cellWidth, height: cellHeight)
        
        //set spacing
        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
        self.sectionInsetReference = .fromSafeArea
        self.minimumLineSpacing = cellHeight/14
    
        
        
        
    }
    
}
