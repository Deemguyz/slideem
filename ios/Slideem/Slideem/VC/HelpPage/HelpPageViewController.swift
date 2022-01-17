//
//  HelpPageViewController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 16.01.2022.
//

import UIKit

class HelpPageViewController: UIViewController {
    
    private lazy var descriptionLabel = DeemLabel(text: Strings.Help.description, textColor: <#T##UIColor#>, textFont: <#T##UIFont#>)
    
    override func loadView() {
        super.loadView()
        
        self.setUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUI() {
        self.setNavBar()
        
    }
    
    private func setNavBar() {
        self.navigationController?.title = Strings.Help.title
    }
}
