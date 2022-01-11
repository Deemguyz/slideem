//
//  QRScannerVCFactory.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 11.01.2022.
//

import Foundation

struct QRScannerVCFactory {
    static public func make() -> QRScannerViewController {
        let vm = QRScannerViewModel()
        let vc = QRScannerViewController(viewModel: vm)
        return vc
    }
}
