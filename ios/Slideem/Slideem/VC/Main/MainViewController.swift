//
//  MainViewController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var mainLogoImage = DeemImageView(image: Images.Main.mainLogo)
    
    private lazy var startButton = DeemRectangularButton(color: .clear, cornerRadius: 10, title: "", titleColor: .white, titleFont: .systemFont(ofSize: 30))
    
    private let viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = #colorLiteral(red: 0.1333333333, green: 0.2039215686, blue: 0.2352941176, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setViews() {
        self.view.addSubview(mainLogoImage)
    }
}
