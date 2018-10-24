//
//  CustomSVItem.swift
//  SnackView_Example
//
//  Created by Kevin Morton on 10/24/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import SnackView
import UIKit

// Create a subclass of SVItem

class CustomSVItem: SVItem {
    
    // Pass all parameters in init method to customize your SVItem
    init(withColor color: UIColor) {
        super.init()
        
        // Add an UIView
        let customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = color
        self.addSubview(customView)
        
        // Add UIView contraints
        let vConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[customView(70)]-|", options: [], metrics: nil, views: ["customView": customView])
        
        let hConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[customView]-|", options: [], metrics: nil, views: ["customView": customView])
        
        self.addConstraints(vConstraints + hConstraints)
    }
    
    public required convenience init?(coder aDecoder: NSCoder) {
        self.init(coder: aDecoder)
    }
}
