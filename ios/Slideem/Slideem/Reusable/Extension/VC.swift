//
//  VC.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit
import SnapKit

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

extension UIViewController {
    public func setNav(with title: String) {
        let nav = DeemNavBar(title: title)
        
        self.view.addSubview(nav)
        nav.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.height.equalTo(40)
        }
    }
    
    public var topOffset: CGFloat {
        return self.computeTopOffset()
    }
    
    private func computeTopOffset() -> CGFloat {
        for view in self.view.subviews {
            if view is DeemNavBar { return DeemDeviceSizes.safeAreaTop + 50 }
        }
        return DeemDeviceSizes.safeAreaTop
    }
}
