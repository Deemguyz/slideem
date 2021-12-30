//
//  VC.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

extension UIViewController {
    public func setWhiteBackground() {
        self.view.backgroundColor = .white
    }
    
    public func hideNavBar() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    public func showNavBar() {
        self.navigationController?.navigationBar.isHidden = false
    }
}
