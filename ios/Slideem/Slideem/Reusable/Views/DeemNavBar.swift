//
//  DeemNavBar.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 18.01.2022.
//

import UIKit
import SnapKit

class DeemNavBar: UIView {
    private lazy var titleLabel = DeemLabel(color: .clear, text: "", textColor: DeemColors.textColor, textFont: .boldSystemFont(ofSize: 20), frame: .zero, numberOfLines: 1)
    private lazy var backButton = DeemBackButton()
    
    init(title: String) {
        super.init(frame: .zero)
        self.setViews(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews(title: String) {
        self.addSubview(backButton)
        backButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
            make.width.equalTo(20)
            make.height.equalTo(40)
        }
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(25)
        }
        
        self.titleLabel.text = title
    }
}

class DeemBackButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        self.setViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews() {
        self.setImage(UIImage(named: "BackButton"), for: .normal)
        self.backgroundColor = .clear
    }
}
