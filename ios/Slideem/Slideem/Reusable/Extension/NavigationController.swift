//
//  NavigationController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

extension UINavigationController {
    public func hideNavBar() {
        self.navigationBar.isHidden = true
    }
    
    public func showNavBar() {
        self.navigationBar.isHidden = false
    }
}
