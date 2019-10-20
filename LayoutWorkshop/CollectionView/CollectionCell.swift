//
//  CollectionCell.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 10/19/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    
    //do stuff after the cell is created by the storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        let imageView = UIView()
        
        //add the image view to the cell's content view
        self.contentView.addSubview(imageView)
        
        //allow autolayout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //set up autolayout constraints programmatically
        imageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: self.contentView.layer.frame.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.backgroundColor = UIColor.green
        

        
        let label1 = UILabel()
        label1.text = "Label 1 Text"
        label1.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(label1)

        //set up autolayout constraints programmatically
        label1.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 170).isActive = true
        label1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        self.contentView.bringSubviewToFront(label1)
  
    }

}
