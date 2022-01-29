//
//  JoystickVCFactory.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 29.01.2022.
//

import Foundation

struct JoystickVCFactory {
    static public func make() -> JoystickViewController {
        let vm = JoystickViewModel()
        let vc = JoystickViewController(viewModel: vm)
        return vc
    }
}
