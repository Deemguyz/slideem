//
//  DeemLabel.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 16.01.2022.
//

import UIKit

class DeemLabel: UILabel {
    init(color: UIColor = .clear, text: String, textColor: UIColor, textFont: UIFont, frame: CGRect = .zero, numberOfLines: Int = 0) {
        super.init(frame: frame)
        self.setViews(text: text, numberOfLines: numberOfLines, textColor: textColor, color: color, font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews(text: String, numberOfLines: Int, textColor: UIColor, color: UIColor, font: UIFont) {
        self.text = text
        self.numberOfLines = numberOfLines
        self.textColor = textColor
        self.backgroundColor = color
        self.font = font
    }
}
