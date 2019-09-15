//
//  ViewController.swift
//  LayoutWorkshop
//
//  Created by David Lawrence on 9/15/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class Main1ViewController: UIViewController {
    
    @IBAction func childScreenButton(_ sender: UIBarButtonItem) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBarHeight: CGFloat = self.navigationController!.navigationBar.frame.height
        print("navBarHeight: \(navBarHeight)")

        let profileImage = UIImage(named: "tabBarButtonImage")
        let profileImageView = UIImageView(image: profileImage)

        //profileImageView.contentMode = .scaleAspectFit
        profileImageView.widthAnchor.constraint(equalToConstant: navBarHeight)
        profileImageView.heightAnchor.constraint(equalToConstant: navBarHeight)

        if let leftBarButtonItem = self.navigationItem.leftBarButtonItem {
            leftBarButtonItem.customView = profileImageView
        }
    }
    
    


}

