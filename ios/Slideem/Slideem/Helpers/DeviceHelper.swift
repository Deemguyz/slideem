//
//  DeviceHelper.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 18.01.2022.
//

import UIKit

struct DeemDeviceSizes {
    static var safeAreaTop: CGFloat {
        return UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.safeAreaInsets.top ?? 0
    }
}
