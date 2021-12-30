//
//  MainVCFactory.swift
//  Slideem
//
//  Created by Yessen Yermukhanbet on 31.12.2021.
//

import Foundation

struct MainVCFactory {
    public static func make() -> MainViewController {
        let vm = MainViewModel()
        let vc = MainViewController(viewModel: vm)
        return vc
    }
}
