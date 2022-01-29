//
//  QRScannerViewModel.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 11.01.2022.
//

import UIKit

import AVFoundation

protocol QRScannerViewModelDelegate: AnyObject {
    func moveToJoystick()
}

class QRScannerViewModel {
    
    weak var delegate: QRScannerViewModelDelegate?
    
    public func gotQRCode(code: String?) {
        // TODO: Add checking the validation of qr with server
        guard let qrCode = code else { return }
        self.delegate?.moveToJoystick()
    }
    
}
