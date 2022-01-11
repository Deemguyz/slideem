//
//  QRScannerViewController.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 11.01.2022.
//

import UIKit

class QRScannerViewController: UIViewController {

    private let viewModel: QRScannerViewModel
    
    init(viewModel: QRScannerViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
