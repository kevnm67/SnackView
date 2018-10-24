//
//  ViewController.swift
//  SnackView
//
//  Created by kevnm67 on 10/24/2018.
//  Copyright (c) 2018 kevnm67. All rights reserved.
//

import SnackView
import UIKit

extension UIColor {
    static var flatBlue: UIColor { return #colorLiteral(red: 0.2041661143, green: 0.5957091451, blue: 0.8579813838, alpha: 1) }
}

class ViewController: UIViewController {
    
    var items: Array<SVItem>?
    var snackView: SnackView?
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showSnackView(with: self.passwordItems)
    }
}

extension ViewController {
    
    // MARK: Actions
    
    @IBAction func showMixedExample(_ sender: Any) {
        showSnackView(with: mixedItems, title: "Mixed SVItem example")
    }
    
    @IBAction func showCustomExample(_ sender: Any) {
        showSnackView(with: [CustomSVItem(withColor: UIColor.flatBlue)], title: "Custom SVItem")
    }
}

extension ViewController {
    
    // MARK: Snackview
    
    func showSnackView(with items: [SVItem], title: String = "Create password") {
        // Present the alert on screen.
        self.snackView = SnackView(withTitle: title, andCloseButtonTitle: "Cancel", andItems: items)
        self.snackView?.show()
    }
    
    var passwordItems: [SVItem] {
        // Define all the view you want to display
        let newPassword = SVTextFieldItem(withPlaceholder: "New Password", isSecureField: true)
        
        let repeatPassword = SVTextFieldItem(withPlaceholder: "Repeat Password", isSecureField: true)
        
        let continueButton = SVButtonItem(withTitle: "Continue") {
            print("Continue button tapped")
        }
        
        return [newPassword, repeatPassword, continueButton]
    }
    
    var mixedItems: [SVItem] {
        
        let switchItem = SVSwitchItem(withTitle: "Push Notification", andDescription: "Activate to stay up to date...") { isOn in
            print("Push notifications were updated with value: \(isOn.description)")
        }
        
        let detailItem = SVDetailTextItem(withTitle: "Details", andDescription: "Lorem ipsum dolor sit amet...")
        
        let applicationItem = SVApplicationItem(withIcon: UIImage(named: "Icon")!,
                                                withTitle: "Ipsum lorem",
                                                andDescription: "Lorem ipsum dolor sit amet...")
        
        return [switchItem, detailItem, applicationItem]
    }
}

