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
    
    //function to handle the 'tap' gesture recognizer added to the image view
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "segueMain1ToChild", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBarHeight: CGFloat = self.navigationController!.navigationBar.frame.height
        print("navBarHeight: \(navBarHeight)")

        let profileImage = UIImage(named: "tabBarButtonImage2")
        let profileImageView = UIImageView(image: profileImage)
        
        //create a tap gesture recognizer and add it to the image view
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        profileImageView.addGestureRecognizer(tap)
        
        profileImageView.clipsToBounds = true
        let profileImageViewHeight = profileImageView.frame.size.height
        profileImageView.layer.cornerRadius = profileImageViewHeight/2
        

        if let leftBarButtonItem = self.navigationItem.leftBarButtonItem {
            leftBarButtonItem.customView = profileImageView
        }
    }
    
    


}

