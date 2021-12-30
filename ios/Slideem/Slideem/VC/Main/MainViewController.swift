//
//  MainViewController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import UIKit

import SnapKit

class MainViewController: UIViewController {
    
    // MARK: - Components
    
    private lazy var mainLogoImage = DeemImageView(image: Images.Main.mainLogo)
    
    private lazy var startButton = DeemRectangularButton(color: .clear, cornerRadius: 10, title: Strings.Main.startButton, titleColor: .white, titleFont: .systemFont(ofSize: 30), image: Images.Main.startButton)
    
    private let viewModel: MainViewModel
    
    // MARK: - LifeCycle
    
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
        self.setViews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.hideNavBar()
    }
    
    //MARK: - Set UI
    
    private func setViews() {
        self.view.addSubview(mainLogoImage)
        mainLogoImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.snp.top).inset(170)
            make.height.equalTo(103)
            make.leading.equalToSuperview().inset(43)
            make.trailing.equalToSuperview().inset(4)
        }
        self.view.addSubview(startButton)
        startButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.height.equalTo(75)
            make.width.equalTo(240)
            make.bottom.equalTo(self.view.snp.bottom).inset(215)
        }
    }
}
