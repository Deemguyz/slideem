//
//  HelpPageViewController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 16.01.2022.
//

import UIKit
import SnapKit

class HelpPageViewController: UIViewController {
    
    // MARK: - Components
    
    private lazy var descriptionLabel = DeemLabel(text: Strings.Help.description, textColor: DeemColors.textColor, textFont: .boldSystemFont(ofSize: 16))
   
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    // MARK: - UI
    
    private func setUI() {
        self.view.backgroundColor = DeemColors.vcColor
        
        self.setNav(with: Strings.Help.title)
        
        self.view.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(topOffset)
        }
    }
}
