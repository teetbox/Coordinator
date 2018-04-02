//
//  TwoCoordinator.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class TwoCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        
        print("Two Coordinator init")
    }
    
    deinit {
        print("Two Coordinator deinit")
    }
    
    func start() {
        let twoViewMode = TwoViewModel()
        twoViewMode.coordinator = self
        let twoViewController = TwoViewController(viewModel: twoViewMode)
        
        let topViewController = UIApplication.topViewController()
        topViewController?.navigationController?.pushViewController(twoViewController, animated: true)
    }
    
}

extension TwoCoordinator: TwoViewModelCoordinator {
    
}
