//
//  Main2ViewController.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 9/15/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class Main2ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataStore = CollectionDataSource()
    var collectionViewLayout = CollectionLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = dataStore
        collectionView.collectionViewLayout = collectionViewLayout
    }
}
