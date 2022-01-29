//
//  DeemImageView.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

class DeemImageView: UIImageView {
    
    init(color: UIColor = .clear, image: String, frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setView(color: color, image: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setView(color: UIColor, image: String) {
        self.backgroundColor = color
        self.image = UIImage(named: image)
    }
}
