//
//  CollectionCell.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 10/19/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //This does work, but moved to CollectionDataSource
        //  so all cell formatting is in one location
//        self.contentView.layer.cornerRadius = 10
//        self.contentView.layer.masksToBounds = true
        
        //NOTE: has no visible effect; see same code in CollectionDataSource
//        //add a drop shadow to the cell
//        self.layer.shadowColor = UIColor.black.cgColor
//        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        self.layer.shadowRadius = 2.0
//        self.layer.shadowOpacity = 0.5
//        self.layer.masksToBounds = false
//        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }

}
