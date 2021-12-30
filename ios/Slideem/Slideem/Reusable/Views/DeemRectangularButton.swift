//
//  DeemRectangularButton.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

final class DeemRectangularButton: UIButton {
    
    init(color: UIColor = .clear, cornerRadius: CGFloat, title: String, titleColor: UIColor, titleFont: UIFont, frame: CGRect = .zero, image: String? = nil) {
        super.init(frame: frame)
        self.setViews(color: color, cornerRadius: cornerRadius, title: title, titleColor: titleColor, titleFont: titleFont, image: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews(color: UIColor, cornerRadius: CGFloat, title: String, titleColor: UIColor, titleFont: UIFont, image: String?) {
        self.backgroundColor = color
        self.layer.cornerRadius = cornerRadius
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = titleFont
        guard let image = image else { return }
        self.setImage(with: image)
    }
    
    private func setImage(with image: String) {
        let image = UIImage(named: image)
        self.setBackgroundImage(image, for: .normal)
    }
}
