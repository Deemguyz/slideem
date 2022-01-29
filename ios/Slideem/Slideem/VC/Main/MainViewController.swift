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
    
    private lazy var helpButton = DeemRectangularButton(color: .clear, cornerRadius: 0, title: Strings.Main.helpButton, titleColor: .white, titleFont: .italicSystemFont(ofSize: 14), frame: .zero, image: nil)
    
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
        self.setButtons()
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
        
        self.view.addSubview(helpButton)
        helpButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(50)
            make.height.equalTo(32)
            make.width.equalTo(150)
        }
    }
    
    private func setButtons() {
        self.startButton.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        self.helpButton.addTarget(self, action: #selector(helpButtonPressed), for: .touchUpInside)
    }
}

extension MainViewController {
    @objc private func helpButtonPressed() {
        let vc = HelpPageVCFactory.make()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func startButtonPressed() {
        // TODO: Open scan view
        let vc = QRScannerVCFactory.make()
        self.present(vc, animated: true, completion: nil)
    }
}
